defmodule Bolide.Game do
  use Bolide.Web, :model

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  schema "games" do
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
    |> cast(params, [:map_name, :map_variant])
    |> validate_required([:map_name, :map_variant])
  end
end
