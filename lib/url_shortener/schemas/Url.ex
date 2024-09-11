defmodule UrlShortener.Schemas.Url do
  use Ecto.Schema

  @type t() :: %__MODULE__{
          id: binary() | nil,
          url_string: String.t()
        }

  schema "urls" do
    field(:url_string, :string)
  end
end
