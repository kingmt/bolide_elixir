defmodule Bolide.Repo.Migrations.CreateObstacle do
  use Ecto.Migration

  def change do
    create table(:obstacles) do
      add :track_id, references(:tracks, on_delete: :nothing)
      add :segment_number, :integer
      # what I really want
      # add :circle, :circle
      add :center_x, :integer
      add :center_y, :integer
      add :radius, :float

      timestamps()
    end

  end
end
