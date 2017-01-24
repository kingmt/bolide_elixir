defmodule Bolide.Repo.Migrations.CreateObstacle do
  use Ecto.Migration

  def change do
    create table(:obstacles) do
      add :track_id, references(:tracks, on_delete: :nothing)
      add :section_id, references(:sections, on_delete: :nothing)
      # what I really want
      # add :circle, :circle
      add :center_x, :float
      add :center_y, :float
      add :radius, :float

      timestamps()
    end

  end
end
