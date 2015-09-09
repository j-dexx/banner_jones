class AddAttachmentsImageToTeamMember < ActiveRecord::Migration
  def self.up
    add_column :team_members, :image_file_name, :string
    add_column :team_members, :image_content_type, :string
    add_column :team_members, :image_file_size, :integer
    add_column :team_members, :image_updated_at, :datetime
    add_column :team_members, :image_alt, :string
  end

  def self.down
    remove_column :team_members, :image_file_name
    remove_column :team_members, :image_content_type
    remove_column :team_members, :image_file_size
    remove_column :team_members, :image_updated_at
    remove_column :team_members, :image_alt
  end
end
