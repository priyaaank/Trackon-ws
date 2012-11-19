class Address

  include Mongoid::Document

  field :address_line1, :type => String
  field :address_line2, :type => String
  field :city, :type => String
  field :zipcode, :type => String
  field :country, :type => String

  embedded_in :addressable, :polymorphic => true

end
