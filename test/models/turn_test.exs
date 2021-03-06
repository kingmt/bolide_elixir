defmodule Bolide.TurnTest do
  use Bolide.ModelCase

  alias Bolide.Turn

  @valid_attrs %{game_id: 1, position: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Turn.changeset(%Turn{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Turn.changeset(%Turn{}, @invalid_attrs)
    refute changeset.valid?
  end
end
