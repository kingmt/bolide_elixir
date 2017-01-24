defmodule Bolide.Repo.Migrations.CreateSection do
  use Ecto.Migration

  def change do
    create table(:sections) do
      add :direction_of_travel, :string
      add :name, :string
      # what I really want
      # add :center_point, :point
      add :center_coord_x, :integer
      add :center_coord_y, :integer
      add :track_id, references(:tracks, on_delete: :nothing)

      timestamps()
    end
    create index(:sections, [:track_id])

  end
end
