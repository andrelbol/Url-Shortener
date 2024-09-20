defmodule UrlShortenerWeb.UrlControllerTest do
  use UrlShortenerWeb.ConnCase
  import Hammox

  describe "index" do
    test "lists all urls", %{conn: conn} do
      stub(UrlServiceMock, :get_all, fn -> ["url1"] end)

      conn = get(conn, "/api/urls")
      assert json_response(conn, 200) == ["url1"]
    end
  end

  describe "show_or_create" do
    test "get the shortened version of a URL, or generate one", %{conn: conn} do
      url = "full_url"
      expected_shortened_url = "shortened_url"
      expected_response = %{"url" => url, "shortened_url" => expected_shortened_url}
      stub(UrlServiceMock, :shorten_url, fn _ -> expected_shortened_url end)

      conn = post(conn, "/api/url", %{url: url})
      assert json_response(conn, 200) == expected_response
    end
  end
end
