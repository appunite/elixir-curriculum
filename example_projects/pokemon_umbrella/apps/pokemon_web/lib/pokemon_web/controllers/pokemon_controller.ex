defmodule PokemonWeb.PokemonController do
  use PokemonWeb, :controller



  def index(conn, _params) do
    pokemons = Pokemon.Pokedex.random_pack()
    render(conn, :index, pokemons: pokemons)
  end
end
