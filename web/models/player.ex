defmodule Bolide.Player do
  use Bolide.Web, :model

  # player is a user instance uniq per game
  # since a user can be playing multiple games simultaneously
  schema "players" do
    field :car_color, :string
    field :sharp_brake_remaining, :integer
    belongs_to :user, Bolide.User
    belongs_to :game, Bolide.Game

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:car_color, :sharp_brake_remaining])
    |> validate_required([:car_color, :sharp_brake_remaining])
  end
end
