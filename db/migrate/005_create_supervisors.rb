class CreateSupervisors < ActiveRecord::Migration
  def self.up
    create_table :supervisors do |t|
      t.string :name
      t.string :title

      t.timestamps 
    end
  end

  def self.down
    drop_table :supervisors
  end
end
