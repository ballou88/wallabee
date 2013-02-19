require 'spec_helper'

describe Wallabee::API, :vcr do
	let(:client) { Wallabee::API.new api_key: api_key}
	let(:api_key) { ENV['API_KEY'] }

	describe "#new" do
		it "raises ArgumentError when missing api key" do
			expect { Wallabee::API.new({}) }.to raise_error(ArgumentError)
		end

		it "returns an instance when initialized" do
			client = Wallabee::API.new api_key: api_key
			expect(client).to be_instance_of(Wallabee::API)
		end
	end

	describe "#achievements" do
		let(:response){ client.achievements.list}

		it "returns an Array" do
			expect(response).to be_instance_of(Array)
		end

	end

  describe "#branded" do
    let(:response){ client.branded.items }

    it "returns an Array" do
      expect(response).to be_instance_of(Array)
    end
  end

  describe "#item_information" do
    let(:response){ client.item_information(1)}

    it "returns a Hashie::Rash" do
      expect(response).to be_instance_of(Hashie::Rash)
    end
  end

  describe "#item_activity" do
    let(:response){ client.item_activity(1)}

    it "returns a Hashie:Rash" do
      expect(response).to be_instance_of(Hashie::Rash)
    end
  end

  describe "#item_type" do
    let(:response){ client.item_type(12)}

    it "returns a Hashie::Rash" do
      expect(response).to be_instance_of(Hashie::Rash)
    end
  end

  describe "#item_type_item" do
    let(:response){ client.item_type_item(12, 1)}

    it "returns a Hashie::Rash" do
      expect(response).to be_instance_of(Hashie::Rash)
    end
  end

end