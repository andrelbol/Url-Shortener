defmodule UrlShortener.Repositories.UrlRepo do
  alias UrlShortener.Schemas.Url
  alias UrlShortener.Repo
  alias UrlShortener.Repositories.UrlRepo.Behaviour

  @behaviour Behaviour

  @spec list() :: [Url.t()]
  def list do
    Repo.all(Url)
  end

  def get(url) do
    Repo.get_by(Url, url_string: url)
  end

  def create(url) do
    {:ok, repo_url} = Repo.insert(%Url{url_string: url, shortened_url: url <> "_shortened"})
    repo_url
  end
end
