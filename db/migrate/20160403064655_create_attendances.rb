class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.boolean :has_attended
      t.string :user_type

      t.timestamps null: false
    end
  end
end
