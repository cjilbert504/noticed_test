class CreateActivityNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_notifications do |t|
      t.references :recipient, polymorphic: true, null: false
      t.string :type, null: false
      t.json :params
      t.datetime :read_at

      t.timestamps
    end
    add_index :activity_notifications, :read_at
  end
end
