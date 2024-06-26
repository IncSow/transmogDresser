# frozen_string_literal: true

require 'application_system_test_case'

class SizesTest < ApplicationSystemTestCase
  setup do
    @size = sizes(:one)
  end

  test 'visiting the index' do
    visit sizes_url
    assert_selector 'h1', text: 'Sizes'
  end

  test 'should create size' do
    visit sizes_url
    click_on 'New size'

    fill_in 'Eu name', with: @size.eu_name
    fill_in 'Fr name', with: @size.fr_name
    fill_in 'Us name', with: @size.us_name
    click_on 'Create Size'

    assert_text 'Size was successfully created'
    click_on 'Back'
  end

  test 'should update Size' do
    visit size_url(@size)
    click_on 'Edit this size', match: :first

    fill_in 'Eu name', with: @size.eu_name
    fill_in 'Fr name', with: @size.fr_name
    fill_in 'Us name', with: @size.us_name
    click_on 'Update Size'

    assert_text 'Size was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Size' do
    visit size_url(@size)
    click_on 'Destroy this size', match: :first

    assert_text 'Size was successfully destroyed'
  end
end
