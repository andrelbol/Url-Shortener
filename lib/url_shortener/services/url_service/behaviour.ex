defmodule UrlShortener.Services.UrlService.Behaviour do
  @callback get_all() :: [String.t()]

  @callback shorten_url(String.t()) :: String.t()
end
