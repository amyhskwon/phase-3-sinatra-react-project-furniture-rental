class CreateReviews < ActiveRecord::Migration[6.1]
  def change
      create_table :reviews do |t|
      t.integer :customer_id
      t.integer :furniture_id
      t.integer :score
      t.string :comment
    end
  end
end
