require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: 'Electronics', description: 'All kinds of electronic devices')
  end

  test 'category should be valid' do
    assert @category.valid?
  end

  test 'name should be present' do
    @category.name = ''
    assert_not @category.valid?
  end

  test 'name should be unique' do
    duplicate_category = @category.dup
    duplicate_category.name = @category.name.upcase
    @category.save
    assert_not duplicate_category.valid?
  end

  test 'name should not be too long' do
    @category.name = 'a' * 101
    assert_not @category.valid?
  end

  test 'name should not be too short' do
    @category.name = 'a' * 2
    assert_not @category.valid?
  end

  test 'description should be present' do
    @category.description = ''
    assert_not @category.valid?
  end

  test 'description should not be too long' do
    @category.description = 'a' * 1001
    assert_not @category.valid?
  end

  test 'description should not be too short' do
    @category.description = 'a' * 9
    assert_not @category.valid?
  end
end
