class CreateMinimessages < ActiveRecord::Migration
  def change
    create_table :minimessages do |t|
      t.string :actualMessage
      t.integer :user_id

      t.timestamps
    end
  end
end
