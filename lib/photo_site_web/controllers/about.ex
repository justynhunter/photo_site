defmodule PhotoSiteWeb.AboutLive do
  use PhotoSiteWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "about", page_descr: "about justyn")}
  end

  def render(assigns) do
    ~H"""
    <div class="copy_area">
      <p>
        Justyn Hunter lives in Nashville, TN and documents the America south with an emphasis on human inhabited space,
        the past and religious iconography.
      </p>

      <p>
        other work may be found at the "<a
          href="https://collective.photos/justyn-hunter/selected-places"
          target="_blank"
        >some photographers</a>"
        collective.
      </p>

      <h2>socials</h2>
      <ul>
        <li><a href="https://www.instagram.com/justynh" target="_blank">instagram</a></li>
        <li><a href="https://www.flickr.com/photos/j_hunter" target="_blank">flickr</a></li>
      </ul>

      <h3>published</h3>
      <ul>
        <li>
          <a
            href="https://subjectivelyobjective.com/product/investigations-in-infrastructure/"
            target="_blank"
          ><em>Investigations in Infrastructure</em></a>, Subjectively Objective, Rochester Hills, MI, 2022
        </li>
        <li>
          <a href="https://subjectivelyobjective.com/product/everything-is-narrative/" target="_blank"><em>Everything is Narrative</em></a>, Subjectively Objective, Rochester Hills, MI, 2022
        </li>
        <li>
          <a href="https://www.slowexposures.org/main-exhibit/2023-main-exhibit/" target="_blank"><em>Slow Exposures 2023</em></a>, Georgia (jurors: Alexa Dilworth, Aline Smithson)
        </li>
      </ul>
    </div>
    """
  end
end
