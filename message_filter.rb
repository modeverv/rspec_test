# -*- coding:utf-8 -*-

class MessageFilter
  attr_reader :words
  def initialize(*words)
    @words = *words
  end
  
  def detect?(str)
    @words.any?{ |word| str.include? word }
  end
  
end

