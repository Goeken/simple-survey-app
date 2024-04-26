class ChangeAnswerToBooleanInResponses < ActiveRecord::Migration[7.1]
  def up
    change_column :responses, :answer, :boolean
  end

  def down
    change_column :responses, :answer, :string, default: false
  end
end
