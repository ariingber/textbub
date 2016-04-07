class Review < ActiveRecord::Base
  belongs_to :user

  def self.handle_has_number(handle, number)
    self.where(handle: handle, review_phone: number).length > 0
  end
end
