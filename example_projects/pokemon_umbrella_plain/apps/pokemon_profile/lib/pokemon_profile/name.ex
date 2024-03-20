defmodule PokemonProfile.Name do
  def random do
    Faker.Pokemon.name()
  end
end
