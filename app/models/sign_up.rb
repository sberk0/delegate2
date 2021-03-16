# == Schema Information
#
# Table name: sign_ups
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_id    :integer
#  user_id    :integer
#
class SignUp < ApplicationRecord
  belongs_to :user
  belongs_to :task
end
