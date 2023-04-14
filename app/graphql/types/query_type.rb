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
      argument :handle, String, required: true
    end

    def product(handle:)
      Product.find_by(handle: handle)
    end

    field :productById, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    def productById(id:)
      Product.find_by(id: id)
    end

    field :discount,[Types::DiscountType], null:false

    def discount
      Discount.all
    end

    field :cart, Types::CartType, null: true 

    def cart
      Cart.find_by(session: context.dig(:session,:session_id))
    end

    field :isLoggedIn, Boolean, null: false

    def isLoggedIn 
      if User.find(context.dig(:session,:user_id))
        true
      else
        false
      end
    end

  end
end
