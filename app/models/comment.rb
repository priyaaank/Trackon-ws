class Comment

  field :text, :field => String

  embedded_in :track

end
