class BulkController < ApplicationController
  def index
    if params[:query].present?
      @bulk_controller = BulkLocation.where("card_id LIKE ?", "%#{params[:query]}%")
    else
      @bulk_controller = BulkLocation.all
    end
  end

  def new
        @bulk_controller = BulkLocation.new
  end
  def create
    @bulk_controller = BulkLocation.new(bulk_params)

    if @bulk_controller.save
      redirect_to @bulk_controller
    else
      puts @bulk_controller.errors.full_messages
      render :new , status: :unprocessable_entity
    end
  end

  private
   def bulk_params
         params.require(:bulk_location).permit(:card_id, :location, :sleeved)
   end
end
