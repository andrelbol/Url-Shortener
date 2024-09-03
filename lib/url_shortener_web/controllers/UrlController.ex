defmodule UrlShortenerWeb.UrlController do
  use UrlShortenerWeb, :controller

  def get_url(conn, _) do
    render(conn, :index, urls: [ "url1", "url2" ])
  end

end
