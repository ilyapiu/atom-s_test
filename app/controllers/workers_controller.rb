class WorkersController < ApplicationController
before_action :set_worker!, only: %i[destroy show edit update]
    def index
        @workers = Worker.all
      end
    
      def new
        @worker = Worker.new 
      end
      
      def create
        @worker = Worker.new worker_params
    
        if @worker.save
          redirect_to workers_path
        else
          render :new
        end
      end
    
      def destroy
        @worker.destroy
        redirect_to workers_path
      end
    
      def show ; end
    
      def edit ; end
    
      def update
        if @worker.update worker_params
          redirect_to workers_path
        else
          render :edit
        end
      end 
      private
    
      def worker_params
        params.require(:worker).permit(:photo, :name, :position)
      end
    
      def set_worker!
        @worker = Worker.find(params[:id])
      end
end
