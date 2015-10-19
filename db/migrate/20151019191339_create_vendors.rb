class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email
      t.text :desc
      t.bigint :mob
      t.text :address

      t.timestamps null: false
    end
  end
end
