class AddFieldsToEmployer < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :company_name, :string
    add_column :employers, :phone_number, :string
    add_column :employers, :username, :string
  end
end
