class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :rate
      t.string  :comment
      t.timestamps
    end
  end
end
