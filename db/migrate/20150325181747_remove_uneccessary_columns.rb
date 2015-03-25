class RemoveUneccessaryColumns < ActiveRecord::Migration
  def change
    remove_column :polls, :expiration_date
    remove_column :polls, :expired
  end
end
