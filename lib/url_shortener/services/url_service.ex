defmodule UrlShortener.Services.UrlService do
  @moduledoc """
  Service to deal with Urls from the repository
  """
  alias UrlShortener.Services.UrlService.Behaviour

  @behaviour Behaviour

  @spec get_all() :: [String.t()]
  def get_all do
    urls = url_repo().list()
    Enum.map(urls, fn url -> url.url_string end)
  end

  defp url_repo, do: Application.get_env(:url_shortener, :url_repo)
end
