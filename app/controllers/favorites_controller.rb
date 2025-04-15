# frozen_string_literal: true

class FavoritesController < ApplicationController
  def index
  end

  def create
    product.favorites!
    respond_to do |format|
      format.html do
        redirect_to(product_path(product))
      end
      format.turbo_stream do
        render(turbo_stream: turbo_stream.replace(
          'favorite',
          partial: 'products/favorite',
          locals: { product: product },
        ))
      end
    end
  end

  def destroy
    product.unfavorited!
    respond_to do |format|
      format.html do
        redirect_to(product_path(product), status: :see_other)
      end
      format.turbo_stream do
        render(turbo_stream: turbo_stream.replace(
          'favorite',
          partial: 'products/favorite',
          locals: { product: product },
        ))
      end
    end
  end

  private

  def product
    @product || Product.find(params[:product_id])
  end
end
