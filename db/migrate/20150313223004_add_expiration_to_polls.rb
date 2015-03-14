class AddExpirationToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :expired, :boolean
    add_column :polls, :expiration_date, :datetime
  end
end
