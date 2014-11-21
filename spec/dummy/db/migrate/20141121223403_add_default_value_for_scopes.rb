class AddDefaultValueForScopes < ActiveRecord::Migration
  def up
    change_column :oauth_access_grants, :scopes, :string, :default => ''
    change_column :oauth_access_tokens, :scopes, :string, :default => ''
  end

  def down
    change_column :oauth_access_grants, :scopes, :string
    change_column :oauth_access_tokens, :scopes, :string
  end
end
