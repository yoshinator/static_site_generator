class AddCountyToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :county, :string
  end
end
