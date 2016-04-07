class Review < ActiveRecord::Base
  belongs_to :user

  scope :handle_has_number, (handle, number) -> {
    where(handle: handle, review_phone: number).length > 0
  }
end
