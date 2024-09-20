defmodule UrlShortenerWeb.UrlController do
  use UrlShortenerWeb, :controller

  def index(conn, _) do
    urls = url_service().get_all()
    json(conn, urls)
  end

  def show_or_create(conn, %{"url" => url}) do
    shortened_url = url_service().shorten_url(url)
    json(conn, %{url: url, shortened_url: shortened_url})
  end

  defp url_service, do: Application.get_env(:url_shortener, :url_service)
end
