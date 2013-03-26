# -*- coding:utf-8-*-
require "rspec"
require File::dirname(File::dirname(__FILE__)) + '/message_filter.rb'

include RSpec::Expectations

describe MessageFilter do 

  share_examples_for "message filter test with argument 'foo'" do
    it { should be_detect('hello from foo') }
    it { should_not be_detect('hello from ') }
    its("ng_word") { subject.ng_words.should_not be_empty }
  end

  context "NG=fooでテスト" do
    #describe MessageFilter, "with argument 'foo'" do
    
    subject { MessageFilter.new('foo') }
    it_should_behave_like "message filter test with argument 'foo'"

    its(:ng_words) { should have(1).items }
    it { should have(1).ng_words }
  end

  context "NG=foo,bar" do
    subject { MessageFilter.new('foo','bar') }
    
    it { should be_detect('hello from bar') }
    it_should_behave_like "message filter test with argument 'foo'"
    it { should have(2).ng_words}
    
  end

end
