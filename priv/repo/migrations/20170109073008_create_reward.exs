defmodule Prizex.Repo.Migrations.CreateReward do
  use Ecto.Migration

  def change do
    create table(:rewards) do
      add :name, :string
      add :required_time, :string
      add :date_redeemed, :datetime

      timestamps()
    end

  end
end
