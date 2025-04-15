# frozen_string_literal: true

module Favoritable
  extend ActiveSupport::Concern

  included do
    has_many :favorites, dependent: :destroy

    def favorited!
      favorites.create(user: Current.user)
    end

    def unfavorited!
      favorited.destroy
    end

    def favorited
      favorites.find_by(user: Current.user)
    end
  end
end
