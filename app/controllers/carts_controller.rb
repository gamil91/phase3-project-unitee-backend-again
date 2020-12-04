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
        cart = Cart.create
        render json: cart
    end

    def destroy
        cart = Cart.find_by(id: params[:id])
        cart.destroy
    end


end
