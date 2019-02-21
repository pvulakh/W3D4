class ChangeResponderCol < ActiveRecord::Migration[5.2]
  def change
    rename_column :responses, :user_id, :responder_id
  end
end
