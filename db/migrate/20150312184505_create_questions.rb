class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean, :odh
      t.string :question
      t.belongs_to :poll, index:true

      t.timestamps
    end
  end
end
