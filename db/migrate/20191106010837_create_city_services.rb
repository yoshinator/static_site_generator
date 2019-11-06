class CreateCityServices < ActiveRecord::Migration[6.0]
  def change
    create_table :city_services do |t|
      t.references :business, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
