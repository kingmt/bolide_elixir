defmodule Bolide.Track do
  use Bolide.Web, :model

  schema "tracks" do
    field :name, :string
    field :variation, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :variation])
    |> validate_required([:name, :variation])
  end
end
