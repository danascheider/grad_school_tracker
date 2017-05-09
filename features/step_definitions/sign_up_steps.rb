Given(/^there are no users in the system$/) do
  User.count == 0
end

When(/^the user registers with their e\-mail and password$/) do
  visit new_user_registration_path

  within "#new_user" do
    fill_in "user_email", with: "foo@example.com"
    fill_in "user_password", with: "mypassword1"
    fill_in "user_password_confirmation", with: "mypassword1"
    click_button "Sign up"
  end

  find("#notice", text: "Welcome! You have signed up successfully.")
end

Then(/^there should be (\d+) users? in the system$/) do |num|
  expect(User.count).to eq num.to_i
end

Then(/^the user should be signed in$/) do
  expect(current_path).to eq user_path(User.first)
end