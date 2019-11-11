class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.string :heading
      t.string :img_url
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
