class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      # Necessary Columns - These are required for AuthcanEasyroller to function properly
      t.string    :email,               :null => false
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      t.string    :single_access_token, :null => false
      t.string    :perishable_token,    :null => false
      t.integer   :roles_mask,          :null => false, :default => 0

      # Magic Columns - You may leave any of the following out if you wish
      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip

      # Timestamp Columns - You should have these on every database table you create
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
