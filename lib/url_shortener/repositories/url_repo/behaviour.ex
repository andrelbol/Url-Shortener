defmodule UrlShortener.Repositories.UrlRepo.Behaviour do
  alias UrlShortener.Schemas.Url

  @callback list() :: [Url.t()]
end
