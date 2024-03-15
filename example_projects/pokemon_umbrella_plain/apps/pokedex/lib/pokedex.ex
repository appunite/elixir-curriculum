defmodule Pokedex do
  @moduledoc """
  Documentation for `Pokedex`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Pokedex.hello()
      :world

  """
  def hello do
    :world
  end

  defmodule Pokemon do
    defstruct [:name]
  end

  def random_pack(size \\ 5) do
    1..size
    |> Enum.map(fn _x -> PokemonProfile.Name.random() end)
    |> Enum.map(fn pokemon_name -> %Pokemon{name: pokemon_name} end)
  end
end
