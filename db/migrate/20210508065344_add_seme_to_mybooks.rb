class AddSemeToMybooks < ActiveRecord::Migration[6.1]
  def change
    add_column :mybooks, :seme, :integer
  end
end
