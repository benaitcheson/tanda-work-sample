class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.integer  :user_id, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.integer  :break_length

      t.timestamps
    end
  end
end
