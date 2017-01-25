defmodule Bolide.Repo.Migrations.CreateSection do
  use Ecto.Migration

  def up do
    DirectionEnum.create_type
    create table(:sections) do
      add :direction_of_travel, :direction
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

  def down do
    drop table(:sections)
    DirectionEnum.drop_type
  end
end
