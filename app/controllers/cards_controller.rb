class CardsController < ApplicationController
  def index
    @cards = CardInformation.all
  end
end
