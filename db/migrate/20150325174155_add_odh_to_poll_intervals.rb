class AddOdhToPollIntervals < ActiveRecord::Migration
  def change
    add_column :poll_intervals, :odh, :boolean
  end
end
