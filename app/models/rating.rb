class Rating
  
  include Mongoid::Document

  field :rating_value, :type => Integer

  embedded_in :rateable, :polymorphic => true

end
