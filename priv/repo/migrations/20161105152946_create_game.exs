defmodule Bolide.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :uuid, :uuid
      add :map_name, :string
      add :map_variant, :string

      timestamps()
    end

  end
end
