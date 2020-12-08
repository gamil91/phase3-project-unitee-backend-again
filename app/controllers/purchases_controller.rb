class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all 
        render json: purchases,
        include: 
                [:user,
                :cart_items => {:only => [:quantity, :color, :size, :item_id,]}],
            except: [:updated_at]
    end

    def show
        purchase = Purchase.find(params[:id])
        render json: purchase,
        include: 
                [:user,
                :cart_items => {:only => [:quantity, :color, :size, :item_id,]}],
            except: [:updated_at]
    end
  
    def create
        purchase = Purchase.new(purchase_params)
        user = User.find(params[:user_id])
        user.cart.cart_items.each do |item|
            purchase.cart_items << item
            item.cart_id = nil
        end
        purchase.save
        render json: purchase,
        include: 
                [:user,
                :cart_items => {:only => [:quantity, :color, :size, :item_id,]}],
            except: [:updated_at]
    end

    private

    def purchase_params
        params.require(:purchase).permit(:name, :address, :user_id)
    end
  
end
