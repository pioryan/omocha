class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def show
    logger.debug "asdasd"
  end
end
