class CatsController < ApplicationController


    def index 
        @cats = Cat.all 
        render :index 
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def new 
        @cat = Cat.new 
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save 
            redirect_to cat_url(@cats)
        else
            @cat_errors = @cat.errors.full_messages 
            render :new 
        end
    end

    def edit 
        @cat = Cat.find_by(id: params[:id])
        render :edit
    end

    def update
        @cat = Cat.find(id: params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            @cat_errors = @cat.errors.full_messages 
            render :edit 
        end
    end
    private
    def cat_params 
       params.require(:cat).permit(:name,:sex,:description,:color,:birth_date) 
    end
end
