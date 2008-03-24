class AddMembersCountToSupervisors < ActiveRecord::Migration
  def self.up
    add_column :supervisors, :members_count, :integer
  end

  def self.down
    remove_column :supervisors, :members_count
  end
end
