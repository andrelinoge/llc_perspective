# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  identifier :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Page < ApplicationRecord
  translates :title, :content

  def Page.[](identifier)
    Page.find_by(identifier: identifier)
  end
end
