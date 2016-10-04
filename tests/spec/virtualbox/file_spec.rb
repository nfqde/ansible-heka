require 'spec_helper'

%w{
  /etc/heka
  /etc/heka/lua
}.each do |f|
  describe file(f) do
    it { should be_directory }
  end
end

%w{
  /var/log/hekad.log
  /etc/heka/conf.d/00-hekad.toml
  /etc/heka/conf.d/10-tasks.toml
  /etc/heka/lua/monolog.lua
}.each do |f|
  describe file(f) do
    it { should be_file }
  end
end
