defmodule Bolide.CrashGeometryTest do
  use Bolide.ModelCase

  alias Bolide.CrashGeometry

  @valid_attrs %{coord_x: 1, coord_y: 2}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CrashGeometry.changeset(%CrashGeometry{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CrashGeometry.changeset(%CrashGeometry{}, @invalid_attrs)
    refute changeset.valid?
  end
end
