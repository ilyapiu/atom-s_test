class ServicesController < ApplicationController
    before_action :set_service!, only: %i[destroy show edit update]
    def index
        @services = Service.all
      end
    
      def new
        @service = Service.new 
      end
      
      def create
        @service = Service.new service_params
    
        if @service.save
          redirect_to root_path
        else
          render :new
        end
      end
    
      def destroy
        @service.destroy
        redirect_to root_path
      end
    
      def show ; end
    
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
        params.require(:service).permit(:name)
      end
    
      def set_service!
        @service = Service.find(params[:id])
      end

end
