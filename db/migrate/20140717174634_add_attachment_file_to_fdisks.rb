class AddAttachmentFileToFdisks < ActiveRecord::Migration
  def self.up
    change_table :fdisks do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :fdisks, :file
  end
end
