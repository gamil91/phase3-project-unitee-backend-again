class CartItemsController < ApplicationController

    def index
        cart_items = CartItem.all
        render json: cart_items, 
        include: 
            [:item => {:only => [:name, :price, :clearance]}],
        except: [:updated_at]
    end


    def create
      

      if (params[:cart_id] == 0) || Cart.all.length == 0 
        cart = Cart.create
        cart_item = CartItem.create(quantity: params[:quantity], color: params[:color], size: params[:size], item_id: params[:item_id], cart_id: cart.id
        )
        render json: cart_item
        
      else 
        item = Item.find(params[:item_id])
        current_cart = Cart.find(params[:cart_id])

        if current_cart.items.include?(item)
          target_item = current_cart.cart_items.find{|ci| ci.item_id == item.id && ci.size == params[:size] && ci.color == params[:color]}
          if !!target_item
                target_item.quantity += params[:quantity].to_i
                target_item.save
                render json: target_item
          else
            new_cart_item = CartItem.create(cart_item_params)
            render json: new_cart_item
          end
        else
          new_cart_item = CartItem.create(cart_item_params)
          render json: new_cart_item
        end
      end
    end


    def update
      cart_item = CartItem.find(params[:id])
      cart_item.update(quantity: params[:quantity])
      cart_item.save
      render json: cart_item
    end


    def destroy  
      cart_item = CartItem.find(params[:id])
      cart_item.destroy
      render json: cart_item
    end


    private
    def cart_item_params
      params.require(:cart_item).permit(:quantity, :color, :size,:item_id, :cart_id, :purchase_id)
    end

end

