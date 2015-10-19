class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :desc
      t.integer :man_date
      t.integer :exp_date
      t.integer :inst_date
      t.integer :status
      t.integer :i_zone
      t.text :i_location

      t.timestamps null: false
    end
  end
end
