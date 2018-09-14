class ChangeIndexOnUsersForSessionToken < ActiveRecord::Migration[5.2]
  def change
    remove_index :users, name: "index_users_on_session_token"
    add_index :users, [:session_token, :email]
  end
end
