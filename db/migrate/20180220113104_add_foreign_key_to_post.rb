class AddForeignKeyToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :employer, foreign_key: true
  end
end
