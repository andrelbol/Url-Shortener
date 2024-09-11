defmodule UrlShortener.Services.UrlService do
  @moduledoc """
  Service to deal with Urls from the repository
  """
  alias UrlShortener.Services.UrlService.Behaviour

  @behaviour Behaviour

  @spec get_all() :: [String.t()]
  def get_all do
    []
  end
end
