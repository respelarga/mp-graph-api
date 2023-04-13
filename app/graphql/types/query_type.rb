module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, [Types::ProductType], null: false

    def products
      Product.all
    end

    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    def product(id:)
      Product.find(id)
    end

    field :discount,[Types::DiscountType], null:false

    def discount
      Discount.all
    end

    field :cart, Types::CartType, null: false do
      argument :session, String, required: true
    end

    def cart(session:)
      Cart.find_by(session: session)
    end

  end
end
