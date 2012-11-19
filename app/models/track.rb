class Track

  include Mongoid::Document

  field :title, :type => String
  field :summary, :type => String
  field :start_time, :type => DateTime
  field :end_time, :type => EndTime
  
  has_many :presenters, :class_name => "User" 
  embeds_many :comments
  embeds_many :ratings
  embeds_many :votes

end
