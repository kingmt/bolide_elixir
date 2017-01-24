defmodule Bolide.Obstacle do
  use Bolide.Web, :model

  schema "obstacles" do
    # what I really want
    # field :circle, :circle
    field :center_x, :integer
    field :center_y, :integer
    field :radius, :float
    belongs_to :section, Bolide.Section

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:section_id, :center_x, :center_y, :radius])
    |> validate_required([:section_id, :center_x, :center_y, :radius])
  end
end
