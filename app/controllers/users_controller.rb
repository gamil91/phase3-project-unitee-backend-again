class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users, 
        include:
            [:cart => {:only => [:id]},
            :purchases => {:only => [:id, :name, :address]},
            :cart_items => {:except => [:updated_at]}],
            except: [:created_at, :updated_at]
            
    end


    def show
        user = User.find(params[:id]) 
        render json: user, 
        include:
        [:created_at.to_date,
        :cart => {:only => [:id]},
        :purchases => {:only => [:id, :name, :address]},
        :cart_items => {:except => [:updated_at]}],
        except: [ :updated_at]
    end

    def create
        user = User.find_by(user_params)
        if !!user
            render json: user, 
            include:
            [:cart => {:only => [:id]},
            :purchases => {:only => [:id, :name, :address, :created_at]},
            :cart_items => {:except => [:updated_at]}],
            except: [:created_at, :updated_at]
        else
            user = User.create(user_params)
            if Cart.all.length != 0 && Cart.all.last.user == nil
                user.cart = Cart.all.last
            elsif Cart.all.last.user == nil
                user.cart = Cart.all.last
            else
                user.build_cart
                user.save
            end
            render json: user, 
            include:
            [:cart => {:only => [:id]},
            :purchases => {:only => [:id, :name, :address, :created_at]},
            :cart_items => {:except => [:updated_at]}],
            except: [:created_at, :updated_at]

        end
        
    end

    def destroy
        

    end

    private

    def user_params

    end

    def user_params
        params.require(:user).permit(:name, :email)
      end



end
