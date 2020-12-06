class ItemsController < ApplicationController

    def index

      items = Item.all
      render json: items, include: 
                    [:images => {:only => [:id, :image_url, :color]}], 
                    except: [:created_at, :updated_at]
    end

    def show
      item = Item.all.find_by(id: params[:id])
      render json: item, include: 
                [:images => {:only => [:id, :image_url, :color]}], 
                except: [:created_at, :updated_at]
    end

    def sorted_by_color

      color = (params[:color])
      images = Image.all.select{|i| i.color == color }
      items_sorted_color = images.collect{|a| a.item}

      render json: items_sorted_color, include: 
      [:images => {:only => [:id, :image_url, :color]}], 
      except: [:created_at, :updated_at]

    end
    
end
  

