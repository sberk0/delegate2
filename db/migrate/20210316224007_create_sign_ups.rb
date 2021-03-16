class CreateSignUps < ActiveRecord::Migration[6.0]
  def change
    create_table :sign_ups do |t|
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
