class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.text :feed
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
