defmodule Bolide.TrackGeometryTest do
  use Bolide.ModelCase

  alias Bolide.TrackGeometry

  @valid_attrs %{segment_number: 42, coord_x: 1, coord_y: 2}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TrackGeometry.changeset(%TrackGeometry{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TrackGeometry.changeset(%TrackGeometry{}, @invalid_attrs)
    refute changeset.valid?
  end
end

