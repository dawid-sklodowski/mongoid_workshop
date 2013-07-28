class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  embeds_many :properties
  before_create do
    self.name = "User: #{self.name}"
  end
end