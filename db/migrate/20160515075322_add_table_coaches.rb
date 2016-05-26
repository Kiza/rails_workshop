class AddTableCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :job
      t.text :description
      t.references :event, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
