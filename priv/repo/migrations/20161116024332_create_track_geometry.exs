defmodule Bolide.Repo.Migrations.CreateTrackGeometry do
  use Ecto.Migration

  def change do
    create table(:track_geometry) do
      add :track_id, references(:tracks, on_delete: :nothing)
      add :section_id, references(:sections, on_delete: :nothing)
      # what I really want
      # add :poly, :polygon
      add :coord_x, :integer
      add :coord_y, :integer

      timestamps()
    end

  end
end
