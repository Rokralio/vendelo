# frozen_string_literal: true

require 'test_helper'

# test/components/category_component_test.rb
class CategoryComponentTest < ViewComponent::TestCase
  test 'should render an empty category' do
    # rubocop:disable Style/RedundantStringEscape
    assert_equal(
      %(<a class=\"category text-gray-600 px-4 py-2 rounded-2xl drop-shadow-sm hover:bg-gray-300 bg-gray-300\" href=\"/\">Cualquiera</a>),
      render_inline(CategoryComponent.new).to_html,
    )
    # rubocop:enable Style/RedundantStringEscape
  end

  test 'should render a category' do
    category = Category.last
    # rubocop:disable Style/RedundantStringEscape
    assert_equal(
      %(<a class=\"category text-gray-600 px-4 py-2 rounded-2xl drop-shadow-sm hover:bg-gray-300 bg-white\" href=\"/?category_id=#{category.id}\">#{category.name}</a>),
      render_inline(CategoryComponent.new(category: category)).to_html,
    )
    # rubocop:enable Style/RedundantStringEscape
  end
end
