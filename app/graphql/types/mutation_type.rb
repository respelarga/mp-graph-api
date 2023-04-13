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

    field :isLoggedIn, Boolean, null: false

    def isLoggedIn 
      if User.find(context.dig(:session,:user_id))
        true
      else
        false
      end
    end

    field :addDiscount, [Types::DiscountType], null: true do
      argument :percentage, Float, required: true
      argument :minimum, Float, required: true
    end

    def addDiscount(args)
      discount = Discount.new(args)
      if User.find(context.dig(:session,:user_id))
        if discount.save
          [
            percentage: args[:percentage],
            minimum: args[:minimum]
          ]
        else
          nil
        end
      else
        nil
      end
    end
    
  end
end
