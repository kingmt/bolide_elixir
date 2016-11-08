defmodule Bolide.Turn do
  use Bolide.Web, :model

  schema "turns" do
    field :position, :integer
    belongs_to :game, Bolide.Game
    has_many :player_turns, Bolide.PlayerTurn

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:game_id, :position])
    |> validate_required([])
  end
end
