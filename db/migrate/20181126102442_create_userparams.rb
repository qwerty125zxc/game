class CreateUserparams < ActiveRecord::Migration[5.1]
  def change
    create_table :userparams do |t|
      t.string :nickname
      t.integer :age

      t.timestamps
    end
  end
end
