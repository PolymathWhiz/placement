class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :string
    add_column :users, :objective, :string
    add_column :users, :university, :string
    add_column :users, :level, :string
    add_column :users, :major, :string
    add_column :users, :skill, :string
    add_column :users, :city, :string
    add_column :users, :gender, :string
    add_column :users, :username, :string
    add_column :users, :facebook, :text
    add_column :users, :twitter, :text
    add_column :users, :linkedin, :text
    add_column :users, :phone, :string
  end
end
