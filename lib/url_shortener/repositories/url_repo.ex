defmodule UrlShortener.Repositories.UrlRepo do
  alias UrlShortener.Schemas.Url
  alias UrlShortener.Repo
  alias UrlShortener.Repositories.UrlRepo.Behaviour

  @behaviour Behaviour

  @spec list() :: [Url.t()]
  def list do
    Repo.all(Url)
  end
end
