class AddOneFieldsToEmployer < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :city, :integer
  end
end
