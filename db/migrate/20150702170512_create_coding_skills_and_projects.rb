class CreateCodingSkillsAndProjects < ActiveRecord::Migration
  def change
    create_table :coding_skills do |t|
      t.column :name, :string
      t.column :description, :string
    end

    create_table :projects do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :github_url, :string
      t.column :coding_skill_id, :integer
    end
  end
end
