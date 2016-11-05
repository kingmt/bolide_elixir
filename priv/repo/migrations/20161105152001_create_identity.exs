defmodule Bolide.Repo.Migrations.CreateIdentity do
  use Ecto.Migration

  def change do
    create table(:identities) do
      add :provider, :string
      add :uid, :string
      add :token, :text
      add :refresh_token, :text
      add :expires_at, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:identities, [:user_id])

  end
end
