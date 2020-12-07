class CartsController < ApplicationController

    def index
        carts = Cart.all 
        render json: carts, except: [:created_at, :updated_at]
    end

    def show
        cart = Cart.all.find_by(id: params[:id])
        render json: cart, include: 
                [:cart_items => {:only => [:quantity, :color, :size, :item_id]}, 
                :items => {:only => [:name, :price]}],
                except: [:created_at, :updated_at]
    end

    def create
        if Cart.all.length != 0 
            cart = Cart.all.last
            render json: cart
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
