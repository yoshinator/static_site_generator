class AddColumnsToPages < ActiveRecord::Migration[6.0]
  def change
        add_column :pages, :title, :text
        add_column :pages, :image_url, :string
        add_column :pages, :h1, :text
        add_column :pages, :h2, :text
        add_column :pages, :h3, :text
        add_column :pages, :content1, :text
        add_column :pages, :content2, :text
        add_column :pages, :content3, :text
        add_column :cities, :business_id, :integer
        add_column :services, :business_id, :integer
  end
end
