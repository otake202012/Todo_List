class Task < ApplicationRecord
  belongs_to :user
  validates :state,  presence: true
  validates :limit,  presence: true
  validates :task,   presence: true
end
