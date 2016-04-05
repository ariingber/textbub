class HandleValidator < ActiveModel::Validator
  def validate(record)
    unless record.handle.starts_with? '@'
      record.errors[:handle] << 'Need a handle starting with @'
    end
  end
end
