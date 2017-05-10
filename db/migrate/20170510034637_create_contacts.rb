class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.date :date
      t.string :reason
      t.text :details
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
