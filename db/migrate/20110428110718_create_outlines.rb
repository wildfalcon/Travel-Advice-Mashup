class CreateOutlines < ActiveRecord::Migration
  def self.up
    create_table :outlines do |t|
      t.string :name
      t.text :polygons

      t.timestamps
    end
  end

  def self.down
    drop_table :outlines
  end
end
