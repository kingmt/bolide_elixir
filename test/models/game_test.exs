defmodule Bolide.GameTest do
  use Bolide.ModelCase

  alias Bolide.Game

  @valid_attrs %{map_name: "some content", map_variant: "some content", uuid: "7488a646-e31f-11e4-aace-600308960662"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Game.changeset(%Game{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Game.changeset(%Game{}, @invalid_attrs)
    refute changeset.valid?
  end
end
