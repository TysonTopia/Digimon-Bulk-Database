class BulkController < ApplicationController
  def index
    @bulk_controller = BulkLocation.all
  end
end
