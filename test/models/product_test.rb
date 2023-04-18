require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @category = Category.create(name: 'Electronics', description: 'All kinds of electronic devices')
    @brand = Brand.create(name: 'Apple')
    @product = Product.new(name: 'iPhone', category: @category, brand: @brand, description: 'Latest iPhone model')
  end

  test 'product should be valid' do
    assert @product.valid?
  end

  test 'name should be present' do
    @product.name = ''
    assert_not @product.valid?
  end

  test 'category should be present' do
    @product.category = nil
    assert_not @product.valid?
  end

  test 'brand should be present' do
    @product.brand = nil
    assert_not @product.valid?
  end

  test 'description should be present' do
    @product.description = ''
    assert_not @product.valid?
  end

  test 'description should not be too long' do
    @product.description = 'a' * 1001
    assert_not @product.valid?
  end

  test 'description should not be too short' do
    @product.description = 'a' * 9
    assert_not @product.valid?
  end
end
