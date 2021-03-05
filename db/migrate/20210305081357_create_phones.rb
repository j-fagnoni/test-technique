class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.string :imei
      t.string :color
      t.integer :storage
      t.timestamps
    end
  end
end
