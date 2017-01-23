defmodule Bolide.StartingPosition do
  use Bolide.Web, :model

  schema "starting_positions" do
    # what I really want
    # field :coord, :point
    field :coord_x, :integer
    field :coord_y, :integer
    belongs_to :track, Bolide.Track

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:coord_x, :coord_y, :track_id])
    |> validate_required([:coord_x, :coord_y, :track_id])
  end
end
