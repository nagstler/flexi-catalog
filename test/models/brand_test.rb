require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  def setup
    @brand = Brand.new(name: 'Apple', description: 'A leading technology company known for its innovative products')
  end

  test 'brand should be valid' do
    assert @brand.valid?
  end

  test 'name should be present' do
    @brand.name = ''
    assert_not @brand.valid?
  end

  test 'name should be unique' do
    duplicate_brand = @brand.dup
    duplicate_brand.name = @brand.name.upcase
    @brand.save
    assert_not duplicate_brand.valid?
  end

  test 'name should not be too long' do
    @brand.name = 'a' * 101
    assert_not @brand.valid?
  end

  test 'name should not be too short' do
    @brand.name = 'a' * 2
    assert_not @brand.valid?
  end

  test 'description should be present' do
    @brand.description = ''
    assert_not @brand.valid?
  end

  test 'description should not be too long' do
    @brand.description = 'a' * 1001
    assert_not @brand.valid?
  end

  test 'description should not be too short' do
    @brand.description = 'a' * 9
    assert_not @brand.valid?
  end
end
