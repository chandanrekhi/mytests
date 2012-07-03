require 'spec_helper'

describe Hotdog do
	describe "#apply_ketchup" do
		subject {hotdog}
		before {hotdog.apply_ketchup}

		context "with ketchup" do
			let(:hotdog) { Hotdog.new(:ketchup => true) }
			specify { subject.has_ketchup_on_it?.should be_true }
		end

		context "without ketchup" do
			let(:hotdog) { Hotdog.new(:ketchup => false) }
			specify {subject.has_ketchup_on_it?.should be_false}
		end
	end
end