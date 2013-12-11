require 'spec_helper'

describe "Pages" do

	let(:base_title) { "DataBEAST" }
	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_title(full_title('')) }
		it { should_not have_title("Home") }
		it { should have_content("DataBEAST") }
	end

	describe "Help page" do
		before { visit help_path }

		it { should have_title(full_title('Help')) }
		it { should have_content("Help") }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_title(full_title("About")) }
		it { should have_content("About") }
	end

	describe "Store page" do
		before { visit store_path }

		it { should have_title(full_title("Store")) }
		it { should have_content("Store") }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_title(full_title("Contact")) }
		it { should have_content("Contact") }
	end
end