class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: carts, except: [:created_at, :updated_at]
    end

    def show
        cart = Cart.all.find_by(id: params[:id])
        render json: cart, 
            include: 
                [:user,
                :cart_items => {:only => [:quantity, :color, :size, :item_id,]}],
            except: [:created_at, :updated_at]
    end

    def create
        main_cart = Cart.all.find_by(user_id: nil)
        if !!main_cart
            render json: main_cart
        else
            cart = Cart.create
            render json: cart
        end
    end

    def destroy
        

        cart = Cart.find(params[:id])
        cart.destroy
        render json: cart
    end



end
