class AddScopesToApplication < ActiveRecord::Migration
  def change
    add_column :oauth_applications, :scopes, :string, default: ''
  end
end
