defmodule Bolide.UserTest do
  use Bolide.ModelCase

  alias Bolide.User

  @valid_attrs %{desription: "some content", email: "some content", first_name: "some content", last_name: "some content", user_name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
