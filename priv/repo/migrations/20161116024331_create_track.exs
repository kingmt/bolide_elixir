defmodule Bolide.Repo.Migrations.CreateTrack do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :name, :string
      add :variation, :string

      timestamps()
    end

  end
end
