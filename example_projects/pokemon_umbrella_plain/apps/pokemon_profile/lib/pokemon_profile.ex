defmodule PokemonProfile do
  @moduledoc """
  Documentation for `PokemonProfile`.
  """

  alias PokemonProfile.Greeter
  alias PokemonProfile.Name

  @doc """
  Hello world.

  ## Examples

      iex> PokemonProfile.hello()
      :world

  """
  def hello do
    :world
  end

  def greet do
    Name.random()
    |> Greeter.hello()
  end
end
