defmodule Bolide.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :user_name, :string
      add :email, :string
      add :desription, :text

      timestamps()
    end

  end
end
