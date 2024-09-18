defmodule UrlShortener.Schemas.Url do
  use Ecto.Schema

  @type t() :: %__MODULE__{
          id: binary() | nil,
          url_string: String.t(),
          shortened_url: String.t()
        }

  schema "urls" do
    field(:url_string, :string)
    field(:shortened_url, :string)
  end
end
