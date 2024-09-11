defmodule UrlShortenerWeb.UrlController do
  use UrlShortenerWeb, :controller

  def index(conn, _) do
    urls = url_service().get_all()
    render(conn, :index, urls: urls)
  end

  defp url_service, do: Application.get_env(:url_shortener, :url_service)
end
