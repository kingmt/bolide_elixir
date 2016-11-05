defmodule Bolide.Repo.Migrations.CreatePlayer do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :car_color, :string
      add :sharp_brake_remaining, :integer
      add :user_id, references(:users, on_delete: :nothing)
      add :game_id, references(:games, on_delete: :nothing, type: :uuid)

      timestamps()
    end
    create index(:players, [:user_id])
    create index(:players, [:game_id])

  end
end
