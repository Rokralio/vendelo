# frozen_string_literal: true

require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path
    assert_response :success
  end

  test 'render a detail product page' do
    product = Product.create(name: 'Product 1', price: 100)
    get product_path(product.id)
    assert_response :success
  end
end
