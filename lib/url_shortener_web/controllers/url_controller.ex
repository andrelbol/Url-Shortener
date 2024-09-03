defmodule UrlShortenerWeb.UrlController do
  use UrlShortenerWeb, :controller

  def index(conn, _) do
    render(conn, :index, urls: [ "url1", "url2" ])
  end

end
