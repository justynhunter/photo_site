defmodule PhotoSiteWeb.AboutLive do
  use PhotoSiteWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "about")}
  end

  def render(assigns) do
    ~H"""
    <div id="cv">
      <p>
        Justyn Hunter lives in Nashville, TN and documents the America south with an emphasis on human inhabited space,
        the past and religious iconography.
      </p>

      <p>
        other work may be found at the "<a href="https://collective.photos/justyn-hunter/selected-places">some photographers</a>"
        collective.
      </p>

      <h3>socials</h3>
      <ul>
        <li><a href="https://www.instagram.com/justynh">instagram</a></li>
        <li><a href="https://www.flickr.com/photos/j_hunter">flickr</a></li>
      </ul>

      <h3>published</h3>
      <ul>
        <li>
          <a href="https://subjectivelyobjective.com/product/investigations-in-infrastructure/"><em>Investigations in Infrastructure</em></a>, Subjectively Objective, Rochester Hills, MI, 2022
        </li>
        <li>
          <a href="https://subjectivelyobjective.com/product/everything-is-narrative/"><em>Everything is Narrative</em></a>, Subjectively Objective, Rochester Hills, MI, 2022
        </li>
        <li>
          <a href="https://www.slowexposures.org/main-exhibit/2023-main-exhibit/"><em>Slow Exposures 2023</em></a>, Georgia (jurors: Alexa Dilworth, Aline Smithson)
        </li>
      </ul>
    </div>
    """
  end
end
