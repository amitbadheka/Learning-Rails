class CreateIncentives < ActiveRecord::Migration
  def change
    create_table :incentives do |t|
      t.integer :employee_id
      t.date :incentive_date
      t.integer :incentive_amound
      t.references :employee, index: true

      t.timestamps
    end
  end
end
