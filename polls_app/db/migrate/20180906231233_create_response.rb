class CreateResponse < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.string :respondent_id, null: false
      t.integer :answer_choice_id, null: false

      t.timestamp
    end

    add_index :responses, :answer_choice_id
    add_index :responses, :respondent_id
  end
end
