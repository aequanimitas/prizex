defmodule Prizex.Repo.Migrations.CreateRewards do
  use Ecto.Migration

  def change do
    create table(:rewards) do
      add :name, :string
      add :required_total, :string

      timestamps
    end
  end
end
