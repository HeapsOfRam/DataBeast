require 'spec_helper'

describe Card do
	let(:card) { FactoryGirl.create(:card) }

	subject{ card }

	it { should respond_to(:name) }
	it { should respond_to(:price) }
	it { should respond_to(:power_level) }
	it { should respond_to(:health_level) }
end
