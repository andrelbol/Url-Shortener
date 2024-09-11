defmodule UrlShortener.Services.UrlServiceTest do
  alias UrlShortener.Services.UrlService
  use ExUnit.Case, async: true

  describe "get_all" do
    test "gets all urls from repository" do
      assert UrlService.get_all() == []
    end
  end
end
