defmodule PokemonProfile.Greeter.Formal do
  @behaviour PokemonProfile.Greeter

  def hello(pokemon_name) do
    "Good morning #{pokemon_name}."
  end
end
