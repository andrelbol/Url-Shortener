defmodule UrlShortener.Services.UrlServiceTest do
  use ExUnit.Case, async: true
  alias UrlShortener.Schemas.Url
  alias UrlShortener.Services.UrlService
  import Hammox

  describe "get_all" do
    test "gets all urls from repository" do
      mockUrls = [%Url{url_string: "some-url", shortened_url: "shortened"}]
      stub(UrlRepoMock, :list, fn -> mockUrls end)

      assert UrlService.get_all() == ["some-url"]
    end
  end
end
