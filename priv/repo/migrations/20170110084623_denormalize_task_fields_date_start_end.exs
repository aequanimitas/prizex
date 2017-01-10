defmodule Prizex.Repo.Migrations.DenormalizeTaskFieldsDateStartEnd do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :time_start, :datetime
      add :time_end, :datetime
      modify :date_start, :date
      modify :date_end, :date
      remove :consumed_time
    end
  end
end
