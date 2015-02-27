user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

City.create(name: 'Vienna', short_name: 'Vn')
City.create(name: 'Oslo', short_name: 'Os')
City.create(name: 'Milan', short_name: 'Mn')
City.create(name: 'Lyon', short_name: 'Ly')
City.create(name: 'New York', short_name: 'NY')
City.create(name: 'Rome', short_name: 'Rm')

