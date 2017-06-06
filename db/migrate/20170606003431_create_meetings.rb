class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.date :date

      t.timestamps
    end
  end
end
