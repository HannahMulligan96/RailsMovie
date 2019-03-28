class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.string :rating
      t.string :description
      t.string :category
  

      t.timestamps
    end
  end
end
