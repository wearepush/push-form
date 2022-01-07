defmodule FormWeb.PageControllerTest do
  use FormWeb.ConnCase

  test "GET /", %{conn: conn} do

    IO.inspect System.get_env("SECRET_KEY_BASE")

    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
