class Reception < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :arrive, presence: true
  validates :leave, presence: true
  validate :arrive_leave_check
end

def arrive_leave_check
  errors.add(:leave, "をきちんとなおしましょう") unless
    arrive < leave
end
