require 'spec_helper'

describe port(8325) do
  it { should be_listening }
end
