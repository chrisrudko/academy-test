include Warden::Test::Helpers
include ActionDispatch::Assertions::ResponseAssertions  
Warden.test_mode!

# Feature: User index page
#   As a user
#   I want to see a list of users
#   So I can see who has registered
feature 'User index page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User listed on index page
  #   Given I am signed in
  #   When I visit the user index page
  #   Then I see my own email address
  scenario 'user sees own email address' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit users_path
    expect(page).to have_content user.email
  end

  scenario 'user is on all_users page' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit users_path
    #assert_redirected_to '/all_users' 
    expect(page.current_path).to eq("/all_users")
  end

end

