class LiverpoolController < ApplicationController
  
    def index
        @lists=List.all
        @guests=Guest.all
    end
    
    def new
        @list= List.new
    end
    
    def create
        @list=List.new
        @list.name=params[:list][:name]
        @list.year_birth=params[:list][:year_birth]
        @list.height=params[:list][:height]
        @list.weight=params[:list][:weight]
        @list.position=params[:list][:position]
        @list.save
        
        redirect_to "/liverpool/index"
    end
    
    # def new
    # end
    
    # def create
    #     @list=List.new
    #     @list.name=params[:input_name]
    #     @list.year_birth=params[:input_year_birth]
    #     @list.height=params[:input_height]
    #     @list.weight=params[:input_weight]
    #     @list.position=params[:input_position]
    #     @list.save
        
    #     redirect_to "/liverpool/index"
    # end
    
    def destroy
        list = List.find(params[:list_id])
        list.destroy
        
        redirect_to '/liverpool/index'
    end
    
    def edit
        @list = List.find(params[:list_id])
    end
    
    def update
        list = List.find(params[:list_id])
        list.name=params[:name]
        list.year_birth=params[:year_birth]
        list.height=params[:height]
        list.weight=params[:weight]
        list.position=params[:position]
    
        list.save
        
        redirect_to '/liverpool/index'
    end
    
    def guest_new
    end
    
    def guest_create
        @guest=Guest.new
        @guest.content=params[:guest_content]
        
        @guest.save
        
        redirect_to "/liverpool/index"
    end
    
    def guest_destroy
        guest = Guest.find(params[:guest_id])
        guest.destroy
        
        redirect_to '/liverpool/index'
    
    end
    
    def guest_edit
        @guest = Guest.find(params[:guest_id])
    end
    
    def guest_update
        guest = Guest.find(params[:guest_id])
        guest.content=params[:guest_content]
        
        guest.save
          
        redirect_to "/liverpool/index"
    end
    
end
