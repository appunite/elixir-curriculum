defmodule PokemonProfile do
  @moduledoc """
  Documentation for `PokemonProfile`.
  """

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
    PokemonProfile.Greeter.hello(PokemonProfile.Name.random())
  end
end
