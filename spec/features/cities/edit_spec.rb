feature 'Edit city' do


  scenario 'user can edit city' do
    city = FactoryGirl.create(:city)
    city_mod = FactoryGirl.create(:city)
    visit edit_city_path(city)
    fill_in 'city_name', with: city_mod.name
    fill_in 'city_short_name', with: city_mod.short_name
    click_button 'Save City'
    expect(page).to have_content "Name: #{city_mod.name}" 
  end
  
end