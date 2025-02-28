# frozen_string_literal: true

class ProductContoller < ApplicationController
  def index
    @products = Product.all
  end
end
