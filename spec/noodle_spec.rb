require 'spec_helper'

describe Noodle do
	describe "#apply_ketchup" do
		subject {noodle}
		before {noodle.apply_ketchup}

		context "with ketchup" do
			let(:noodle) { Noodle.new(:ketchup => true) }

			it { should have_ketchup_on_it}
		end

		context "without ketchup" do
			let(:noodle) { Noodle.new(:ketchup => false) }

			it { should_not have_ketchup_on_it }
		end
	end
end