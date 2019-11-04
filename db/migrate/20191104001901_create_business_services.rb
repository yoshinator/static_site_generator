class CreateBusinessServices < ActiveRecord::Migration[6.0]
  def change
    create_table :business_services do |t|
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
