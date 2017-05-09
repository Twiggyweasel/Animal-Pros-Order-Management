class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :region
      t.string :position
      t.string :phone
      t.date :hire_date
      t.boolean :is_active, default: true;

      t.timestamps
    end
  end
end
