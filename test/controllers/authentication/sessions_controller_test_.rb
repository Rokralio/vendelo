# frozen_string_literal: true

require 'test_helper'

module Authentication
  class SessionsController < ApplicationController
    def setup
      @user = users(:roberto)
    end
    test 'should get new' do
      get new_session_url
      assert_response :success
    end

    test 'should login an user by email' do
      post sessions_url, params: { login: roberto.email, password: 'testme' }

      assert_redirected_to products_url
    end

    test 'should login an user by username' do
      post sessions_url, params: { username: roberto.username, password: 'testme' }

      assert_redirected_to products_url
    end
  end
end
