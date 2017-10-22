# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  translates :title, :description
  mount_uploader :image, ProjectPhotoUploader
end
