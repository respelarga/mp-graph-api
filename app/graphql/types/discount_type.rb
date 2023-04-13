# frozen_string_literal: true

module Types
  class DiscountType < Types::BaseObject
    field :id, ID, null: false
    field :percentage, Float
    field :minimum, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
