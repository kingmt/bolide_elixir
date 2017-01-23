defmodule Bolide.SectionTest do
  use Bolide.ModelCase

  alias Bolide.Section

  @valid_attrs %{center_coord_x: 1, center_coord_y: 2, direction_of_travel: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Section.changeset(%Section{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Section.changeset(%Section{}, @invalid_attrs)
    refute changeset.valid?
  end
end
