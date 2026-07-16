class BulkController < ApplicationController
  def index
    if params[:query].present?
      @bulk_controller = BulkLocation.where("card_id LIKE ?", "%#{params[:query]}%")
    else
      @bulk_controller = BulkLocation.all
    end
  end
end
