class DelayedJob
  include Mongoid::Document
  include Mongoid::Timestamps
  field :locked_by,  type: String
  field :failed_at,  type: DateTime
  field :handler,    type: String
  field :priority,   type: Integer
  field :run_at,     type: DateTime
  field :attempts,   type: Integer
  field :locked_at,  type: DateTime
  field :last_error, type: String
end