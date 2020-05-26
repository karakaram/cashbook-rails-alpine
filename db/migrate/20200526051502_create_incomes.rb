class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.references :admin_user, null: false, foreign_key: true
      t.references :income_type, null: false, foreign_key: true
      t.string :name
      t.decimal :price, precision: 9, scale: 0
      t.date :earned_on

      t.timestamps
    end
  end
end
