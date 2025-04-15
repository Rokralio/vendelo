# frozen_string_literal: true

class FavoritesController < ApplicationController
  def create
    product.favorites!
    redirect_to(product_path(product))
  end

  def destroy
    product.unfavorited!
    redirect_to(product_path(product), status: :see_other)
  end

  private

  def product
    @product || Product.find(params[:product_id])
  end
end
