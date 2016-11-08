defmodule Bolide.PlayerTurnTest do
  use Bolide.ModelCase

  alias Bolide.PlayerTurn

  @valid_attrs %{car_end: 42, car_start: 42, pawn_end: 42, pawn_start: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = PlayerTurn.changeset(%PlayerTurn{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = PlayerTurn.changeset(%PlayerTurn{}, @invalid_attrs)
    refute changeset.valid?
  end
end
