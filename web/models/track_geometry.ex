defmodule Bolide.TrackGeometry do
  use Bolide.Web, :model

  schema "track_geometry" do
    field :segment_number, :integer
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
    |> cast(params, [:segment_number, :coord_x, :coord_y, :track_id])
    |> validate_required([:segment_number, :coord_x, :coord_y, :track_id])
  end
end
