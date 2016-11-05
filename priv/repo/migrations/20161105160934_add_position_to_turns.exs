defmodule Bolide.Repo.Migrations.AddPositionToTurns do
  use Ecto.Migration

  def change do
    alter table(:turns) do
      add :position, :integer
    end
  end
end
