# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = 'Created Item'
    else
      render 'new'
    end
   end

  private

  def item_params
    params.require(:item).permit(:name, :description, :image, :file)
  end
end
