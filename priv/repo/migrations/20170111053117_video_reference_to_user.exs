defmodule Prizex.Repo.Migrations.VideoReferenceToUser do
  use Ecto.Migration

  def change do
    alter table (:tasks) do
      add :user_id, references(:users, on_delete: :nothing)
    end
  end
end
