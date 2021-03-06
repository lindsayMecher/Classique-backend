class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :performance_type, :voice_type, :date, :time, :repertoire, :notes, :venue_name, :street_address, :address_line_two, :city, :state, :zip, :contact_first_name, :contact_last_name, :contact_email, :user_honorific, :paid, :stringified_date, :stringified_time, :stringified_created, :stringified_updated

  has_many :favorites

end
