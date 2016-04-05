class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :expDate
      t.integer :securityCode

      t.timestamps null: false
    end
  end
end
