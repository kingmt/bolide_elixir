defmodule Bolide.Identity do
  use Bolide.Web, :model

  schema "identities" do
    field :provider, :string
    field :uid, :string
    field :token, :string
    field :refresh_token, :string
    field :expires_at, :integer
    belongs_to :user, Bolide.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:provider, :uid, :token, :refresh_token, :expires_at])
    |> validate_required([:provider, :uid, :token, :refresh_token, :expires_at])
  end
end
