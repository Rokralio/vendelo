# frozen_string_literal: true

class FavoritesController < ApplicationController
  def create
    Favorite.create(product: product, user: Current.user)
    redirect_to(product_path(product), notice: 'Product added to favorites')
  end

  private

  def product
    @product || Product.find(params[:product_id])
  end
end
