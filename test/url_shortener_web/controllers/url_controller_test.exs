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
end
