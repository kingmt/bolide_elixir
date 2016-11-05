defmodule Bolide.Turn do
  use Bolide.Web, :model

  schema "turns" do
    belongs_to :game, Bolide.Game

    # has_many :player_turns, Bolide.PlayerTurn
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
