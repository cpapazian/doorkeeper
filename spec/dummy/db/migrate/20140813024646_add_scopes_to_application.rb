class AddScopesToApplication < ActiveRecord::Migration
  def change
    add_column :oauth_applications, :scopes, :string
  end
end
