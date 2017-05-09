Given(/^there is no logged\-in user$/) do; end

When(/^the user visits the site$/) do
  visit '/'
end

Then(/^they should see the login page$/) do
  expect(current_path).to eq new_user_session_path
end

Then(/^they should see a link to sign up$/) do
  expect(page).to have_link "Sign up"
end