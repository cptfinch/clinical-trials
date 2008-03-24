class AddSupervisorIdToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :supervisor_id, :integer
  end

  def self.down
    remove_column :members, :supervisor_id
  end
end
