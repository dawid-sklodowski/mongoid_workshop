require 'spec_helper'

describe User do
  describe '.create' do
    it 'creates a user' do
      User.create :name => 'Simon'
      User.count.should == 1
    end

    it 'creates user with name prefixed by User: ' do
      User.create :name => 'John'
      User.last.name.should == 'User: John'
    end

    it 'sets timestamps to current time' do
      User.create.created_at.should be_within(60).of(Time.now)
    end

    it 'creates users with properties' do
      User.create(
        :name => 'Martin',
        :properties => [
          Property.new(:name => 'Villa Schonenburg'),
          Property.new(:name => 'Villa Schonenburg')
        ])
      User.last.properties.first.name.should == 'Villa Schonenburg'
      User.last.properties.count.should == 2
    end
  end
end