defmodule UrlShortener.Services.UrlServiceTest do
  use ExUnit.Case, async: true
  alias UrlShortener.Schemas.Url
  alias UrlShortener.Services.UrlService
  import Hammox

  describe "get_all" do
    test "gets all urls from repository" do
      mockUrls = [%Url{url_string: "some-url", shortened_url: "shortened"}]
      stub(UrlRepoMock, :list, fn -> mockUrls end)

      response_urls = UrlService.get_all()

      assert response_urls == ["some-url"]
    end
  end

  describe "shorten_url" do
    test "return the full Url object with the shortened version parameter if exists" do
      input_url = "some-url"
      expected_shortened_url = "shortened_url"

      stub(UrlRepoMock, :get, fn _ ->
        %Url{url_string: input_url, shortened_url: expected_shortened_url}
      end)

      response_url = UrlService.shorten_url(input_url)

      assert response_url == expected_shortened_url
    end

    test "create new shortened url if url does not exist" do
      input_url = "some-url"
      expected_shortened_url = "shortened_url"
      stub(UrlRepoMock, :get, fn _ -> nil end)

      stub(UrlRepoMock, :create, fn _ ->
        %Url{url_string: input_url, shortened_url: expected_shortened_url}
      end)

      response_url = UrlService.shorten_url(input_url)

      assert response_url == expected_shortened_url
    end
  end
end
