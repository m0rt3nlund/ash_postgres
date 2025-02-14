defmodule AshPostgres.TestRepo.Migrations.PartitionedPost do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    create table(:partitioned_posts, primary_key: false, options: "PARTITION BY LIST (key)") do
      add(:id, :uuid, null: false, default: fragment("gen_random_uuid()"), primary_key: true)
      add(:key, :bigint, null: false, default: 1, primary_key: true)
    end
  end

  def down do
    drop(table(:partitioned_posts))
  end
end
