defmodule PokedexTest do
  use ExUnit.Case
  doctest Pokedex
  alias Pokedex.Pokemon

  test "greets the world" do
    assert Pokedex.hello() == :world
  end

  describe "random_pack/1" do
    test "returns list of structs %Pokedex.Pokemon{name: \"name\"}" do
      assert Pokedex.random_pack(5) |> Enum.all?(&match?(%Pokemon{name: _name}, &1))
    end

    test "it accepts 1 argument size, which is has default value of 5" do
      assert Enum.count(Pokedex.random_pack()) == 5
      assert Enum.count(Pokedex.random_pack()) == Enum.count(Pokedex.random_pack(5))
    end

    test "it returns unique pokemons (no duplicates)" do
      result = Pokedex.random_pack()
      assert Enum.count(result) == result |> Enum.uniq() |> Enum.count()
    end
  end
end
