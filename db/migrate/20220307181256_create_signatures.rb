class CreateSignatures < ActiveRecord::Migration[6.1]
  def change
    create_table :signatures do |t|
      t.string :fullname
      t.string :email
      t.string :job_title

      t.timestamps
    end
  end
end
