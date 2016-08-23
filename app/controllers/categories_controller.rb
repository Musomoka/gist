class CategoriesController < ApplicationController
    def index
        @category.all
        end
    
    def show
    end
    
    def new
        @category = Category.new
    end
    
    def create
        @category =Category.new(@category)
        if @category.save
            redirect_to 'index'
        else
            redirect 'new'
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end

    Private
    def find_categories
        @categories = Category.params([:id])
    end
    
    def category_params
       params.require(:review_cat).permit(:category )
    end
end
