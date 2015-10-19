class CreatePSubCats < ActiveRecord::Migration
  def change
    create_table :p_sub_cats do |t|
      t.string :title
      t.text :desc

      t.timestamps null: false
    end
  end
end
