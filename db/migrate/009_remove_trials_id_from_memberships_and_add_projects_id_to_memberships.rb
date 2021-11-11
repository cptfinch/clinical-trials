class RemoveTrialsIdFromMembershipsAndAddProjectsIdToMemberships < ActiveRecord::Migration
  def self.up
    remove_column :memberships, :trial_id
    add_column :memberships, :project_id, :integer
    add_column :memberships, :project_type, :string
  end

  def self.down
    add_column :memberships, :trial_id, :integer
    remove_column :memberships, :project_id
    remove_column :memberships, :project_type
  end
end
