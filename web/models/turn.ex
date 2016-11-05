defmodule Bolide.Turn do
  use Bolide.Web, :model

  schema "turns" do
    belongs_to :game, Bolide.Game

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
