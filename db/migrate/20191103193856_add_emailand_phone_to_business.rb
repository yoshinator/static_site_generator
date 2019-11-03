class AddEmailandPhoneToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :email, :string
    add_column :businesses, :phone, :string
  end
end
