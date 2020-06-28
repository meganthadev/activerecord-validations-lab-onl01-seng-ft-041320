class ClickbaitTitleValidator < ActiveModel::EachValidator
  
  def validate(record)
    unless record.title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
      record.errors[:email] << "Need clickbait!"
    end
  end
end