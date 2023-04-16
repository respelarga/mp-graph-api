module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, [Types::ProductType]

    def products
      Product.all
    end

    field :product, Types::ProductType do
      argument :handle, String, required: true
    end

    def product(handle:)
      Product.find_by(handle: handle)
    end

    field :productById, Types::ProductType do
      argument :id, ID, required: true
    end

    def productById(id:)
      Product.find_by(id: id)
    end

    field :discount,[Types::DiscountType]

    def discount
      Discount.all
    end

    field :cart, Types::CartType
    def cart
      Cart.find_by(session: context.dig(:session,:session_id))
    end

    field :isLoggedIn, Boolean

    def isLoggedIn 
      if !!context.dig(:session,:user_id)
        if User.find(context.dig(:session,:user_id))
          true
        else
          false
        end
      end
    end

  end
end
