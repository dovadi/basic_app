require 'acceptance/acceptance_helper'

feature 'Admin', %q{
  In order control and administrate the application
  As a Admin
  I want a webfrontend to manage the data
} do

  background do
    @user = create(:user)
  end

  scenario 'Admin visits the Rails admin webfrontend' do
    @user.update_attribute(:admin, true)
    sign_in_as @user
    click_link 'Admin'
    within 'title' do
      page.should have_content('Site administration | Basic App Admin')
    end
  end

  scenario 'User is not allowed to visit the Rails admin webfrontend' do
    sign_in_as @user
    page.should have_no_content('Site administration')
    visit rails_admin_path
    page.should have_no_content('Site administration')
    page.should have_content('Hello user@test.com') #home/index
  end

  scenario 'Visitor is not allowed to visit the Rails admin webfrontend' do
    visit homepage
    page.should have_no_content('Site administration')
    visit rails_admin_path
    page.should have_no_content('Site administration')
    within '.alert-message.alert' do
      page.should have_content('You need to sign in or sign up before continuing.')
    end
  end

end
