class NameValidator < ActiveModel::Validator
  def validate(record)

    if record.name.nil? || record.name.length != 2
      record.errors.add(:name, :not_2, {message:'Field must be 2 caracters long'})
    end
    if record.name.nil? || record.name.length != 2
      record.errors.add(:content, 'Field must be 2 caracters long')
    end
  end
end
