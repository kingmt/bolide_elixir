defmodule Bolide.TrackGeometry do
  use Bolide.Web, :model

  schema "track_geometry" do
    # what I really want
    # field :poly, :polygon
    field :coord_x, :integer
    field :coord_y, :integer
    belongs_to :track, Bolide.Track
    belongs_to :section, Bolide.Section

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:section_id, :coord_x, :coord_y, :track_id])
    |> validate_required([:section_id, :coord_x, :coord_y, :track_id])
  end
end
