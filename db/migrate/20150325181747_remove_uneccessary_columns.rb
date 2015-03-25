class RemoveUneccessaryColumns < ActiveRecord::Migration
  def change
    add_column :poll_intervals, :expired, :boolean
    remove_column :polls, :expiration_date
    remove_column :polls, :expired
  end
end
