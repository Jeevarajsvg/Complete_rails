  require 'spec_helper'
    feature 'sign in'do
      scenario 'Sign in ' do
        user = FactoryGirl.create(:user)
        visit'/'
        click_in "Sign in"
        fill_in "Name",with:user.name
        fill_in " password",with:user.password
        click_button " Sign in"
        expect(page).to have_content("Signed in successfully.")
      end
    end
