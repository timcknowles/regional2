class FollowUp < ApplicationRecord
  enum status: {Review: 0, Discharge: 1}

  belongs_to :user, required: false
  belongs_to :patient, required: false
  belongs_to :checklist, required: false
end
