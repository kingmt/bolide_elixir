defmodule Bolide.Repo.Migrations.CreateStartingPosition do
  use Ecto.Migration

  def change do
    create table(:starting_positions) do
      # what I really want
      # add :coord, :point
      add :coord_x, :integer
      add :coord_y, :integer
      add :track_id, references(:tracks, on_delete: :nothing)

      timestamps()
    end
    create index(:starting_positions, [:track_id])

  end
end
