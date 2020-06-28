class ClickbaitTitleValidator < ActiveModel::EachValidator
  
  def validate(record)
    unless record.title.include?("Won't Believe", "Secret", "Top [number]", or "Guess)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end