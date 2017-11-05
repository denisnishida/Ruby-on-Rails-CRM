class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :image
      t.text :notes

      t.timestamps
    end
  end
end
