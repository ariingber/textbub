class HandleValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.starts_with? '@'
      record.errors[:handle] << 'must start with @'
    end

  end
end
