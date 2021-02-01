class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :location
      t.string :date_of_birth
      t.string :mobile
      t.string :email
      t.references :post
    end
  end
end
