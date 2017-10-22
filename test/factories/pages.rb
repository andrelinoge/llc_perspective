# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  identifier :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :page do
    title "MyString"
    content "MyText"
    identifier "MyString"
    slug "MyText"
  end
end
