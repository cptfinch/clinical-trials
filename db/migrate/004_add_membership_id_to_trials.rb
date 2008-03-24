class AddMembershipIdToTrials < ActiveRecord::Migration
  def self.up
    add_column :trials, :membership_id, :integer
  end

  def self.down
    remove_column :trials, :membership_id
  end
end
