class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :uuid

      t.timestamps
    end
    add_index :devices, :uuid
  end
end
