# encoding: utf-8
#:nodoc:
# From the nice guys at rubyonrails.org -> ActiveSupport
class ::Object
  # An object is blank if it's nil, empty, or a whitespace string.
  # For example, "", "   ", nil, [], and {} are blank.
  #
  # This simplifies
  #   if !address.nil? && !address.empty?
  # to
  #   if !address.blank?
  def blank?
    respond_to?(:empty?) ? empty? : !self
  end
end

class FalseClass #:nodoc:
  def blank?
    true
  end
end

class TrueClass #:nodoc:
  def blank?
    false
  end
end

class Array #:nodoc:
  alias_method :blank?, :empty?
end

class Hash #:nodoc:
  alias_method :blank?, :empty?
end

class Numeric #:nodoc:
  def blank?
    false
  end
end
