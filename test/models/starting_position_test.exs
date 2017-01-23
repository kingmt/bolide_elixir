defmodule Bolide.StartingPositionTest do
  use Bolide.ModelCase

  alias Bolide.StartingPosition

  @valid_attrs %{coord_x: 1, coord_y: 2, track_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = StartingPosition.changeset(%StartingPosition{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = StartingPosition.changeset(%StartingPosition{}, @invalid_attrs)
    refute changeset.valid?
  end
end
