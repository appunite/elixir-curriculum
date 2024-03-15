defmodule PokemonProfileTest do
  use ExUnit.Case
  doctest PokemonProfile

  test "greets the world" do
    assert PokemonProfile.hello() == :world
  end
end
