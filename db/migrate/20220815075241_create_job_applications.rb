class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applications do |t|
      t.boolean :isSeen
      t.references :jobPostId, null: false, foreign_key: true
      t.references :userId, null: false, foreign_key: true

      t.timestamps
    end
  end
end
