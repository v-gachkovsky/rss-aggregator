class RenameTableColumns < ActiveRecord::Migration
  def change
  	rename_column :groups, :group, :name
  	rename_column :feeds, :feed, :url
  	change_column :feeds, :url, :string, limit: 200
  	add_column :feeds, :name, :string
  	rename_column :tizers, :tizer, :name
  end
end
