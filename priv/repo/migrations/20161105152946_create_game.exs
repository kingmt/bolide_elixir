defmodule Bolide.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :map_name, :string
      add :map_variant, :string

      timestamps()
    end

  end
end
