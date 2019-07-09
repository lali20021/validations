class DropAddressesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :addresses 
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
