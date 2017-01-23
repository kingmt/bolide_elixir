defmodule Bolide.Section do
  use Bolide.Web, :model

  schema "sections" do
    field :direction_of_travel, :string
    field :name, :string
    # what I really want
    # field :center_point, :point
    field :center_coord_x, :integer
    field :center_coord_y, :integer
    belongs_to :track, Bolide.Track

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:direction_of_travel, :center_coord_x, :center_coord_y, :track_id])
    |> validate_required([:direction_of_travel, :center_coord_x, :center_coord_y, :track_id])
  end
end
