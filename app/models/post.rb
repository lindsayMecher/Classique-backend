class Post < ApplicationRecord
  validates :performance_type, presence: true
  validates :voice_type, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :venue_name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :contact_first_name, presence: true
  validates :contact_last_name, presence: true
  validates :contact_email, presence: true
  validates :paid, inclusion: { in: [true, false] }

  belongs_to :user
  has_many :favorites

  def stringified_date
    string = date
    string.strftime('%A, %B %e, %Y')
  end

  def stringified_time
    string = time
    string.strftime('%l:%M %p')
  end

  def stringified_created
    string = created_at
    string.strftime('%A, %B %e, %Y')
  end

  def stringified_updated
    string = updated_at
    string.strftime('%A, %B %e, %Y')
    # put in time zone of the system.
  end
end
