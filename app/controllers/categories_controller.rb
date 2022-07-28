class CategoriesController < ApplicationController
before_action :set_category!, only: %i[destroy show edit update]
before_action :fetch_workers, only: %i[show]
    def index
        @categories = Category.order(created_at: :desc)
      end
    
      def new
        @category = Category.new 
      end
      
      def create
        @category = Category.new category_params
    
        if @category.save
          redirect_to categories_path
        else
          render :new
        end
      end
    
      def destroy
        @category.destroy
        redirect_to root_path
      end
    
      def show
        @service = @category.services.build
        @services = @category.services.order(created_at: :desc )
      end
    
      def edit ; end
    
      def update
        if @category.update category_params
          redirect_to root_path
        else
          render :edit
        end
      end 
      
      private
    
      def category_params
        params.require(:category).permit(:name, :photo)
      end
    
      def set_category!
        @category = Category.find(params[:id])
      end
      
      def fetch_workers
        @workers = Worker.all
      end
end
