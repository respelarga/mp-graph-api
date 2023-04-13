module Types
  class MutationType < Types::BaseObject

    field :addProduct, [Types::ProductType], null: true do
      argument :uuid, Integer, required: true
      argument :name, String, required: true
      argument :price, Float, required: true
      argument :handle, String, required: true
      argument :img, String, required: false
      argument :description, String, required:false
    end

    def addProduct(args)
      product = Product.new(args)
      if User.find(context.dig(:session,:user_id))
        if product.save
          [
            uuid: args[:uuid],
            name: args[:name],
            price: args[:price],
            handle: args[:handle],
            img: args[:img],
            description: args[:description]
          ]
        else
          nil
        end
      else
        nil
      end
    end

    field :addToCart, [Types::CartType], null: true do
      argument :products, String, required: true
    end

    def addToCart(products:)
      cart = Cart.new(session: context.dig(:session,:session_id),products:products)
      if cart.save
        [
          session: context.dig(:session,:session_id),
          products: products
        ]
      else
        nil
      end
    end

  end
end
