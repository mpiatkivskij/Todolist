class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
