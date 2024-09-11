defmodule UrlShortener.Services.UrlService.Behaviour do
  @callback get_all() :: [String.t()]
end
