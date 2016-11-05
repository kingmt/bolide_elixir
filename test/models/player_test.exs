defmodule Bolide.PlayerTest do
  use Bolide.ModelCase

  alias Bolide.Player

  @valid_attrs %{car_color: "some content", sharp_brake_remaining: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Player.changeset(%Player{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Player.changeset(%Player{}, @invalid_attrs)
    refute changeset.valid?
  end
end
