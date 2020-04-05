class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites

  def stringified_date
    string = self.date
    string.strftime("%A, %B %e, %Y")
  end

  def stringified_time
    string = self.time
    string.strftime("%l:%M %p")
  end
end
