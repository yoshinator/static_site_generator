class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.integer :service_id
      t.integer :city_id
      t.integer :business_id
      t.timestamps
    end
  end
end
