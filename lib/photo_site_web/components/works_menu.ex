defmodule WorksMenuComponent do
  use Phoenix.LiveComponent

  alias Phoenix.LiveView.JS
  alias PhotoSite.Album
  alias PhotoSite.Repo

  def mount(socket) do
    {:ok, assign(socket, albums: Repo.all(Album) |> Enum.sort(&(&1 >= &2)), show_menu: "")}
  end

  def render(assigns) do
    ~H"""
    <div class="dropdown_menu">
      <a
        href="#"
        phx-click={JS.add_class("show", to: "#dropdown")}
        phx-click-away={JS.remove_class("show", to: "#dropdown")}
        phx-target={@myself}
      >
        work <span class="triangle_down"></span>
      </a>
      <ul id="dropdown">
        <%= for album <- @albums do %>
          <li><.link navigate={"/#{album.slug}"}><%= album.name %></.link></li>
        <% end %>
      </ul>
    </div>
    """
  end
end
