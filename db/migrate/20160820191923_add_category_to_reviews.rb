class AddCategoryToReviews < ActiveRecord::Migration
  def change
    
      add_column :reviews, :Category, :string
  end

end
