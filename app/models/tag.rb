class Tag

  include Mongoid::Document

  field :name, :type => String
  field :description, :type => String

  embedded_in :taggable, :polymorphic => true

end
