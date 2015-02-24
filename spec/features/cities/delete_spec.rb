feature 'Delete city' do


  scenario 'user can delete city' do
    city = FactoryGirl.create(:city)
    visit city_path(city)
    click_link 'Destroy'
    expect(page).to have_no_content "Name: #{city.name}" 
  end
  
end