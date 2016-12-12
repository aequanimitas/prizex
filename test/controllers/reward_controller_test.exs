defmodule Prizex.RewardControllerTest do
  use Prizex.ConnCase

  test "GET /rewards", %{conn: conn} do
    conn = get conn, "/rewards"
    assert html_response(conn, 200) =~ "Rewards"
  end
end
