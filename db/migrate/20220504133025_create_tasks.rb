class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :taskid
      t.string :title
      t.string :description
      t.timestamp :duedate
      t.integer :pomodor_starteds
      t.references :team, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
