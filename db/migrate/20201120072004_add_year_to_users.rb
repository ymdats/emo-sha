class AddYearToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :year, :integer
    add_column :users, :age, :integer
  end
end
