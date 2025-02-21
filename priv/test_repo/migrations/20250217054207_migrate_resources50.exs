defmodule AshPostgres.TestRepo.Migrations.MigrateResources50 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:posts) do
      add(:metadata, :map)
    end
  end

  def down do
    alter table(:posts) do
      remove(:metadata)
    end
  end
end
