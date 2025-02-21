defmodule AshPostgres.TestRepo.Migrations.MigrateResources49 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:orgs) do
      add(:department, :text)
    end

    create(unique_index(:orgs, ["(LOWER(department))"], name: "orgs_department_index"))
  end

  def down do
    drop_if_exists(unique_index(:orgs, ["(LOWER(department))"], name: "orgs_department_index"))

    alter table(:orgs) do
      remove(:department)
    end
  end
end
