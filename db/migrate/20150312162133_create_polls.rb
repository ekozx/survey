class CreatePolls < ActiveRecord::Migration
  def change
    # drop_table :polls do |t|
    # end
    create_table :polls do |t|
      t.belongs_to :organization, index:true

      t.timestamps
    end
  end
end
