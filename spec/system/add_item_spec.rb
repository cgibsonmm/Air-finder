# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Adding an item', type: :system do
  it 'allows a user to create an item' do
    visit new_item_path
    fill_in 'Name', with: 'Project A-383'
    attach_file 'item_image', 'spec/fixtures/css.gif'
    click_on 'Save Item'
    visit items_path

    expect(page).to have_content('Project A-383')
  end
end
