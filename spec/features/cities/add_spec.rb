feature 'Add city' do


  scenario 'user can add city' do
    city = FactoryGirl.create(:city)
    visit new_city_path
    fill_in 'city_name', with: city.name
    fill_in 'city_short_name', with: city.short_name
    click_button 'Save City'
    expect(page).to have_content "Name: #{city.name}" 
  end
  
end