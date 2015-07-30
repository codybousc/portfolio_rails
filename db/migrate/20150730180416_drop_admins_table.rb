class DropAdminsTable < ActiveRecord::Migration
  def change
    drop_table :admins
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
