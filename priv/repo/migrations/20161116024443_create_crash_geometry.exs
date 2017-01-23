defmodule Bolide.Repo.Migrations.CreateCrashGeometry do
  use Ecto.Migration

  def change do
    create table(:crash_geometry) do
      add :track_id, references(:tracks, on_delete: :nothing)
      # what I really want
      # add :poly, :polygon
      add :coord_x, :integer
      add :coord_y, :integer

      timestamps()
    end

  end
end
