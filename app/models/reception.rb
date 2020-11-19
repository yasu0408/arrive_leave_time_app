class Reception < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validate :arrive_leave_check

  def arrive_leave_check
    blank_message = "をきちんとにゅうりょくしましょう"
    if self.arrive.nil? && self.leave.nil?
      errors.add(:arrive, blank_message)
      errors.add(:leave, blank_message)
    elsif self.arrive.nil?
      errors.add(:arrive, blank_message)
    elsif self.leave.nil?
      errors.add(:leave, blank_message)
    elsif arrive > leave
      errors.add(:leave, "かえるじかんがはやすぎます")
    end
  end
end

# def arrive_leave_check
#   errors.add(:leave, "をきちんとなおしましょう") unless
#     arrive < leave
# end
