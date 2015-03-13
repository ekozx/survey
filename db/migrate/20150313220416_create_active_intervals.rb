class CreateActiveIntervals < ActiveRecord::Migration
  def change
    create_table :active_intervals do |t|

      t.timestamps
    end
  end
end
