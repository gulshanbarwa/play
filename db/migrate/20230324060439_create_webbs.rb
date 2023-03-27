class CreateWebbs < ActiveRecord::Migration[7.0]
  def change
    create_table :webbs do |t|
      t.string :email
      t.string :message
      t.string :subject

      t.timestamps
    end
  end
end
