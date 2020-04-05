class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :performance_type, :voice_type, :date, :time, :repertoire, :notes, :venue_name, :street_address, :city, :state, :zip, :contact_first_name, :contact_last_name, :contact_email, :paid, :stringified_date, :stringified_time



end
