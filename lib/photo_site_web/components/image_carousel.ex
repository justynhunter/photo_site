defmodule ImageCarousel do
  use Phoenix.LiveComponent

  def mount(socket) do
    {:ok, assign(socket, page_title: "justyn hunter", show: 1, photos: %{})}
  end

  def update(assigns, socket) do
    photos = assigns.album.photo
    {:ok, assign(socket, show: 1, photos: photos)}
  end

  def render(assigns) do
    ~H"""
    <div class="image_carousel">
      <button id="btn_prev" aria-label="previous photo" phx-click="prev" phx-target={@myself} />
      <button id="btn_next" aria-label="next photo" phx-click="next" phx-target={@myself} />
      <div class="image_container">
        <%= for photo <- @photos do %>
          <div class={"image_wrapper" <> show_photo(@show, photo)}>
            <img
              loading={
                if photo.seq == 1 do
                  "eager"
                else
                  "lazy"
                end
              }
              src={photo.src}
              alt={photo.alt}
            />
            <p><%= photo.caption %></p>
          </div>
        <% end %>
      </div>
    </div>
    """
  end

  def handle_event("prev", _, socket) do
    {:noreply, assign(socket, show: get_next_seq(socket.assigns.show - 1, socket.assigns.photos))}
  end

  def handle_event("next", _, socket) do
    {:noreply, assign(socket, show: get_next_seq(socket.assigns.show + 1, socket.assigns.photos))}
  end

  defp show_photo(seq, photo) do
    case seq == photo.seq do
      true -> "show"
      false -> ""
    end
  end

  defp get_next_seq(curr, photos) do
    {min_seq, max_seq} =
      photos
      |> Enum.min_max_by(& &1.seq)
      |> (fn {min, max} -> {min.seq, max.seq} end).()

    case curr do
      n when n > max_seq -> 1
      n when n < min_seq -> max_seq
      n -> n
    end
  end
end
