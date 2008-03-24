class CreateTrials < ActiveRecord::Migration
  def self.up
    create_table :trials do |t|
      t.column :name, :string
      t.column :hours, :decimal
      t.column :description, :text
      t.timestamps 
    end
  end

  def self.down
    drop_table :trials
  end
end
