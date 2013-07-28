
  # Mongoid
  # Ruby 1.9.3 or better

  class User
    include Mongoid::Document
    include Mongoid::Timestamps
    field :name, type: String
    embeds_many :properties
  end

  class Property
    include Mongoid::Document
    field :name, type: String
    embedded_in :user
  end

  User.create(
    :name => 'Martin',
    :properties => [
      Property.new(:name => 'Villa Schonenburg'),
      Property.new(:name => 'Villa Schonenburg')
    ])

