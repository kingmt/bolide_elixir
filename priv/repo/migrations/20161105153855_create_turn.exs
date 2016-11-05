defmodule Bolide.Repo.Migrations.CreateTurn do
  use Ecto.Migration

  def change do
    create table(:turns) do
      add :game_id, references(:games, on_delete: :nothing)

      timestamps()
    end
    create index(:turns, [:game_id])

  end
end
