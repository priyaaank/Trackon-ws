class Conference

  include Mongoid::Document

  field :name, :type => String
  field :description, :type => String
  
  embeds_one  :location, :as => :addressable
  embeds_many :ratings, :as => :rateable
  embeds_many :tags, :as => :taggable
  embeds_many :tracks

end
