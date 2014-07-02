require 'spec_helper'
require_relative '../lib/prime_number'
require_relative '../spec/modules/prime_number_generator_spec'
describe PrimeNumber do
	before(:all) do
		@obj = described_class.new 7900, 7920
	end
	it_behaves_like PrimeNumberGenerator 
	
	context "#run" do 
		it "should return array" do
			expect(@obj.run).to be_kind_of Array
		end
		it "should return [7901, 7907, 7919]" do
			expect(@obj.run).to eql [7901, 7907, 7919]
		end

		context "with reverse argument initialization" do
			let (:@obj_reverse ) { described_class.new 7920, 7900 }

			it "should return [7901, 7907, 7919]" do
				expect(@obj.run).to eql [7901, 7907, 7919]
			end
		end

		context "with invalid parameter" do
			it "should raise error" do
				expect{ described_class.new("Bojan", 7920) }.to raise_error("Argument error")
			end
		end
	end	
end