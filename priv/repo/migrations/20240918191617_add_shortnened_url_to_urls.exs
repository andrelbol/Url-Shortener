defmodule UrlShortener.Repo.Migrations.AddShortnenedUrlToUrls do
  use Ecto.Migration

  def change do
    alter table("urls") do
      add :shortened_url, :string
    end
  end
end
