class ServicesController < ApplicationController
    before_action :set_service!, only: %i[destroy edit update]
    before_action :set_category! 
    before_action :fetch_workers, only: %i[edit update]
      def new
        @service = Service.new 
      end
      
      def create
        @service = @category.services.build service_params
    
        if @service.save
          redirect_to category_path(@category)
        else
          
          render 'categories/show'
        end
      end
    
      def destroy
        @service.destroy
        redirect_to category_path
      end
    
      def edit ; end 
    
      def update
        if @service.update service_params
          redirect_to root_path
        else
          render :edit
        end
      end 
      private
    
      def service_params
        params.require(:service).permit(:title, :price, worker_ids: [])
      end
    
      def set_service!
        @service = Service.find(params[:id])
      end

      def set_category!
        @category = Category.find(params[:category_id])
      end 

      def fetch_workers
        @workers = Worker.all
      end
      
end
