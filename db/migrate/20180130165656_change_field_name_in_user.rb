class ChangeFieldNameInUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :facebook, :website
  end
end
