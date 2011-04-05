class AddPolygonsToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :polygons, :text
  end

  def self.down
    remove_column :countries, :polygons
  end
end
