# frozen_string_literal: true

class ProductChannel < ApplicationCable::Channel
  def subscribed
    stream_from("product_#{params[:room]}")
  end
end
