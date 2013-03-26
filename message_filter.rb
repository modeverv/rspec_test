# -*- coding:utf-8 -*-

class MessageFilter
  attr_reader :word
  def initialize(word)
    @word = word
  end
  
  def detect?(str)
    str.include? @word
  end
  
end

