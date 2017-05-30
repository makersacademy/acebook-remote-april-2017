require 'rails_helper'

RSpec.describe User, type: :model do
	let(:user){ described_class.new(name: "Sam", email: "test@test.com") }
	
  describe "setup" do
  	it "creates a valid user" do
  		expect(user.valid?).to be(true)
  	end
  	it "checks user has a name attribute" do
  		expect(user.name).to eq("Sam")
  	end
		it "checks user has a email attribute" do
			expect(user.email).to eq("test@test.com")
		end
  end
end
