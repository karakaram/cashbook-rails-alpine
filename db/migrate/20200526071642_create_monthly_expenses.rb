class CreateMonthlyExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_expenses do |t|
      t.references :expense_type, null: false, foreign_key: true
      t.decimal :price, precision: 9, scale: 0
      t.date :paid_on

      t.timestamps
    end
  end
end
