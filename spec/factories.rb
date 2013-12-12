FactoryGirl.define do
	factory :user do
		name	 "Ryan March"
		email	 "red@starcat.com"
		password "databeast"
		password_confirmation "databeast"
	end

	factory :card do
		name "The BEAST"
		price 1
		power_level 1
		health_level 1
	end
end