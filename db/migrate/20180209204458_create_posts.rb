class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :post_position
      t.string :title
      t.text :description
      t.text :role
      t.date :application_ends
      t.string :city
      t.string :position_type
      t.text :requirement
      t.text :responsibilities
      t.string :industry
      t.integer :candidates_needed
      t.text :candidate_description
      t.text :candidate_qualification

      t.timestamps
    end
  end
end
