class Score
  include Mongoid::Document

  field :qualification, type: Float
  field :subject, type: String

  belongs_to :user
end
