defmodule Bolide.User do
  use Bolide.Web, :model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :user_name, :string
    field :email, :string
    field :desription, :string

    has_many :identities, Bolide.Identity
    has_many :players, Bolide.Player

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :user_name, :email, :desription])
    |> validate_required([:first_name, :last_name, :user_name, :email, :desription])
  end
end
