defmodule PokemonWeb.PokemonControllerTest do
  use PokemonWeb.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "random" do
    test "lists pokemons", %{conn: conn} do
      conn = get(conn, ~p"/api/pokemons")
      assert json_response(conn, 200)["data"] == []
    end
  end
end
