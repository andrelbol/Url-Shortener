defmodule UrlShortener.Repo.Migrations.UrlsTable do
  use Ecto.Migration

  def change do
    create table("urls") do
      add :url_string, :string

      timestamps()
    end
  end
end
