defmodule Bolide.Repo.Migrations.CreatePlayerTurn do
  use Ecto.Migration

  def change do
    create table(:player_turns) do
      add :car_start,  {:array, :integer}
      add :car_end,    {:array, :integer}
      add :pawn_start, {:array, :integer}
      add :pawn_end,   {:array, :integer}
      add :player_id,  references(:players, on_delete: :nothing)
      add :turn_id,    references(:turns, on_delete: :nothing)

      timestamps()
    end
    create index(:player_turns, [:player_id])
    create index(:player_turns, [:turn_id])

  end
end
