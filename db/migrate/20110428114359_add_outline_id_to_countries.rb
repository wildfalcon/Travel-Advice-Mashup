class AddOutlineIdToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :outline_id, :integer
  end

  def self.down
    remove_column :countries, :outline_id
  end
end
