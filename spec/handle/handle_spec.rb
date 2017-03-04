require 'spec_helper'

# TODO: 1) verify configs; 2) verify the service is enabled and running; 3a) verify the handle ports are open; 3b) verify the handle service can resolve handles;

# CHECK CONFIGS

# these files should exist

# these files should have specific content


# CHECK SERVICES

describe service('handle') do
  it { should be_enabled }
  it { should be_running }
end


# CHECK PORTS

describe port(8000) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end

describe port(2641) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end

# VERIFY THE HANDLE SERVICE CAN RESOLVE HANDLES

end
