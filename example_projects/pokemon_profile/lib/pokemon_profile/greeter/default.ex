defmodule PokemonProfile.Greeter.Default do
  @behaviour PokemonProfile.Greeter
  def hello(pokemon_name) do
    "Hello #{pokemon_name}!"
  end
end
