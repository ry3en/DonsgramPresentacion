# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  tittle     :text
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :post do
    tittle "MyText"
    body "MyText"
    user nil
  end
end
