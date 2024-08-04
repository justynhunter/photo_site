defmodule PhotoSiteWeb.ContactLive do
  use PhotoSiteWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       page_title: "contact",
       page_descr: "contact page",
       show_form: true,
       form: %{"user_name" => "", "message" => ""}
     )}
  end

  def render(assigns) do
    ~H"""
    <%= if @show_form do %>
      <div id="form_container">
        <.form for={@form} phx-submit="save" phx-target{@myself}>
          <.input
            id="user_name"
            label="name"
            type="text"
            name="user_name"
            value=""
            field={@form["user_name"]}
          />
          <.input id="message" label="message" type="textarea" name="message" value="" field={@form["message"]} />
          <Turnstile.widget theme="light" />
          <button type="submit">send</button>
        </.form>
      </div>
    <% else %>
      <div>
        <p>thank you for your message.</p>
      </div>
    <% end %>
    """
  end

  def handle_event("save", params, socket) do
    case Turnstile.verify(params) do
      {:ok, _} ->
        contact_form = %PhotoSite.ContactForm{
          name: params["user_name"],
          message: params["message"]
        }

        PhotoSite.Repo.insert(contact_form)
        {:noreply, assign(socket, show_form: false)}

      {:error, _} ->
        socket =
          socket
          |> put_flash(:error, "Please try submitting again")
          |> Turnstile.refresh()

        {:noreply, socket}
    end
  end
end
