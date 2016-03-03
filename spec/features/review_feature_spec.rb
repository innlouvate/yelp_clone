require 'rails_helper'
require_relative 'feature_helper'

feature 'reviews' do

  # scenario 'displays an average rating for all reviews' do
  #   sign_up_and_create_restaurant
  #   leave_review('So so', '3')
  #   leave_review('Great', '5')
  #   expect(page).to have_content('Average rating: 4')
  # end

  scenario 'displays an average rating for all reviews' do
    sign_up_and_create_restaurant
    leave_review('so so', '3')
    leave_review('Great!', '5')
    expect(page).to have_content('Average rating: ★★★★☆')
  end


end
