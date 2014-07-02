require 'spec_helper'
require_relative '../../lib/concern/prime_number_generator'
shared_examples_for PrimeNumberGenerator do 
	describe 'instance methods' do
		context "#generate" do
			it "should return array" do
				expect(@obj.generate(@obj.from, @obj.to)).to be_kind_of Array
			end

			context "when input args in ASC order" do
				it "should return [7901, 7907, 7919]" do
					expect(@obj.generate(@obj.from, @obj.to)).to eql [7901, 7907, 7919]
				end
			end
			
			context "when input args in DESC order" do
				it "should return [7901, 7907, 7919]" do
					expect(@obj.generate(@obj.to, @obj.from)).to eql [7901, 7907, 7919]
				end
			end
		end

		context "#isPrime" do
			it "should be true" do
				expect(@obj.isPrime(7919)).to eql(true)
			end
			it "should be false" do
				expect(@obj.isPrime(7920)).to eql(false)
			end
		end

		context "#input_changing" do
			it "should return range of input parameters in ASC order" do
				expect(@obj.input_order_changing(7920, 7900)).to eql (7900..7920)
			end

		end
	end
end