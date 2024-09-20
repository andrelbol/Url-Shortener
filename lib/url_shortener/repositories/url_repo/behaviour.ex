defmodule UrlShortener.Repositories.UrlRepo.Behaviour do
  alias UrlShortener.Schemas.Url

  @callback list() :: [Url.t()]

  @callback get(String.t()) :: Url.t() | nil

  @callback create(String.t()) :: Url.t()
end
