defmodule Prizex.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :date_start, :datetime
      add :consumed_time, :string
      add :date_end, :datetime

      timestamps()
    end

  end
end
