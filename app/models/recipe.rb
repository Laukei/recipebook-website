class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :ingredients, type: String
  field :instructions, type: String

  belongs_to :user
end
