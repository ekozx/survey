class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.belongs_to :organization, index:true

      t.timestamps
    end
  end
end
