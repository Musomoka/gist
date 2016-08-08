class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :Title
      t.text :Desscription
      t.string :Movie_length
      t.string :Director
      t.string :rating

      t.timestamps null: false
    end
  end
end
