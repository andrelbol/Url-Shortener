defmodule UrlShortenerWeb.UrlControllerTest do
  use UrlShortenerWeb.ConnCase

  describe "index" do
    test "lists all urls", %{conn: conn} do
      conn = get(conn, "/api/urls")
      assert json_response(conn, 200) == ["url1", "url2"]
    end
  end
end
