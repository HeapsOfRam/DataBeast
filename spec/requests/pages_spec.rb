require 'spec_helper'

describe "Pages" do

	let(:base_title) { "DataBEAST" }

	describe "Home page" do
		before { visit '/pages/home' }

		it "should have the proper title" do
			expect(page).to have_title("#{base_title} | Home")
		end

		it "should have the content 'Home'" do
			expect(page).to have_content('DataBEAST')
		end
	end

	describe "Help page" do
		before { visit '/pages/help' }

		it "should have the proper title" do
			expect(page).to have_title("#{base_title} | Help")
		end

		it "should have the content 'Help'" do
			expect(page).to have_content('Help')
		end
	end

	describe "About page" do
		before { visit '/pages/about' }

		it "should have the proper title" do
			expect(page).to have_title("#{base_title} | About")
		end

		it "should have the content 'About'" do
			expect(page).to have_content('About')
		end
	end

	describe "Store page" do
		before { visit '/pages/store' }
		
		it "should have the proper title" do
			expect(page).to have_title("#{base_title} | Store")
		end

		it "should have the content 'Store'" do
			expect(page).to have_content('Store')
		end
	end
end