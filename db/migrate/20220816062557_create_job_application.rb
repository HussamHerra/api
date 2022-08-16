class CreateJobApplication < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applications do |t|
      t.integer :users_id
      t.integer :job_posts_id
      t.boolean :isSeen

      t.timestamps
    end
  end
end
