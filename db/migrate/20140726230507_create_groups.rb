class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
