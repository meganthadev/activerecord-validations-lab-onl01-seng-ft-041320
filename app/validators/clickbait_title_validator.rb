class ClickbaitTitleValidator < ActiveModel::EachValidator
  
  def validate(record)
    unless record.title.include?(/flatironschool.com/)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end