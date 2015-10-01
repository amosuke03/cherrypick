class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :title
      t.text    :image_url
      t.text    :movie_url
      t.text    :quote_name

      t.timestamps null: false
    end
  end
end
