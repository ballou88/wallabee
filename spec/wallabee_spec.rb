require 'spec_helper'

describe Wallabee do
  it 'should have a version number' do
    Wallabee::VERSION.should_not be_nil
  end
end