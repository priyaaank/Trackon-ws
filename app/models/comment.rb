class Comment

  include Mongoid::Document

  field :text, :field => String

  embedded_in :track

end
