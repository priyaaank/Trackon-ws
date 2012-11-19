class Vote

  include Mongoid::Document

  field :upvote, :type => Boolean

  embedded_in :voteable, :polymorphic => true

end
