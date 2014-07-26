class CreateTizers < ActiveRecord::Migration
  def change
    create_table :tizers do |t|
      t.string :tizer
      t.belongs_to :feed, index: true
      t.boolean :new_tizer
      t.boolean :read
      t.boolean :notify
      t.string :tags

      t.timestamps
    end
  end
end
