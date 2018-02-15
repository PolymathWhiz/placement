class AddMoreFieldsToEmployer < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :about, :text
    add_column :employers, :address, :text
    add_column :employers, :website, :string
    add_column :employers, :industry, :integer
    add_column :employers, :twitter, :string
  end
end
