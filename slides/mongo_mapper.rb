
  # MongoMapper

  class User
    include MongoMapper::Document
    key :name, String
    embeds_many :properties
    timestamps!
  end

  class Property
    include MongoMapper::EmbeddedDocument
    key :name, String
  end

  User.create(
    :name => 'Martin',
    :properties => [
      Property.new(:name => 'Villa Schonenburg'),
      Property.new(:name => 'Villa Schonenburg')
  ])