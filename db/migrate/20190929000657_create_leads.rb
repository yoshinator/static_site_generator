class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :phone
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :business_id
      t.text :content

      t.timestamps
    end
  end
end
