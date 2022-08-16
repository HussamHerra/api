class CreateJobPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :job_posts do |t|
      t.text :JobDescription

      t.timestamps
    end
  end
end
