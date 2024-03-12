# defmodule PokemonProfile.Greeter do
#   def hello(pokemon_name) do
#     "Hello #{pokemon_name}!"
#   end
# end

defmodule PokemonProfile.Greeter do
  @callback hello(String.t()) :: String.t()

  @adapter Application.compile_env!(:pokemon_profile, :adapter)

  defdelegate hello(pokemon_name), to: @adapter
end
