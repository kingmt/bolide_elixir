defmodule Bolide.Obstacle do
  use Bolide.Web, :model

  schema "obstacles" do
    field :segment_number, :integer
    # what I really want
    # field :circle, :circle
    field :center_x, :integer
    field :center_y, :integer
    field :radius, :float

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:segment_number, :center_x, :center_y, :radius])
    |> validate_required([:segment_number, :center_x, :center_y, :radius])
  end
end
