class CreateOrganizations < ActiveRecord::Migration
  def change
    # drop_table :organizations do |t|
    # end
    create_table :organizations do |t|
      t.string :name

      t.timestamps
    end
  end
end
