defmodule Bolide.Obstacle do
  use Bolide.Web, :model

  schema "obstacles" do
    # what I really want
    # field :circle, :circle
    field :center_x, :float
    field :center_y, :float
    field :radius, :float
    belongs_to :section, Bolide.Section
    belongs_to :track, Bolide.Track

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:section_id, :track_id, :center_x, :center_y, :radius])
    |> validate_required([:section_id, :track_id, :center_x, :center_y, :radius])
  end
end
