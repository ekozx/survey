class RecreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean :odh
      t.string :question
      t.belongs_to :poll_interval, index:true
      t.belongs_to :category, index:true
    end
  end
end
