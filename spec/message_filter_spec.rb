# -*- coding:utf-8-*-
require "rspec"
require File::dirname(File::dirname(__FILE__)) + '/message_filter.rb'

include RSpec::Expectations


describe "MessageFilterのテスト","NG=fooでテスト" do
#describe MessageFilter, "with argument 'foo'" do
  
  subject { MessageFilter.new('foo') }
  
  it { should be_detect('hello from foo') }
  it { should_not be_detect('hello from ') }
  
end

