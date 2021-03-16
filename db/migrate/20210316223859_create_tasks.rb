class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :event_id
      t.integer :user_id
      t.date :due_date
      t.integer :status_id

      t.timestamps
    end
  end
end
