class CreateFdisks < ActiveRecord::Migration
  def change
    create_table :fdisks do |t|
      t.string :file

      t.timestamps
    end
  end
end
