defmodule Bolide.PlayerTurn do
  use Bolide.Web, :model
  #alias Postgrex

  schema "player_turns" do
    field :car_start,  {:array, :integer}
    field :car_end,    {:array, :integer}
    field :pawn_start, {:array, :integer}
    field :pawn_end,   {:array, :integer}
    belongs_to :player, Bolide.Player
    belongs_to :turn, Bolide.Turn

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> validate_required([:car_start, :pawn_start, :player_id, :turn_id])
  end
end
