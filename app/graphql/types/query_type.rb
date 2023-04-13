module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do 
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

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
