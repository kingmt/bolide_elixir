defmodule Bolide.Game do
  use Bolide.Web, :model

  schema "games" do
    field :uuid, Ecto.UUID
    field :map_name, :string
    field :map_variant, :string

    has_many :players, Bolide.Player
    has_many :turns, Bolide.Turn

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:map_name, :map_variant, :uuid])
    |> validate_required([:map_name, :map_variant, :uuid])
  end
end
