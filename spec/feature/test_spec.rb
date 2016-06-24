require 'rails_helper'

def login
  User.create( email: 'stefan@test.com', password: 'password' )
  visit new_user_session_path
  sleep(1)

  fill_in 'Email', with: 'stefan@test.com'
  fill_in 'Password', with: 'password'
  sleep(1)

  click_button 'Log in'
end

feature 'Manage tasks', js: true do
  scenario 'submit post' do

    login
    # Point your browser towards the todo path
    visit new_post_path
    # Enter description in the text field
    fill_in 'post_title', with: 'Be Batman'
    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")
    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Be Batman')
  end
end
