class AddPrizeToMybooks < ActiveRecord::Migration[6.1]
  def change
    add_column :mybooks, :prize, :integer
  end
end
