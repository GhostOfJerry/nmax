require "nmax/version"

module Nmax
  class Error < StandardError; end
  # Your code goes here...

  def self.maximum_numbers(n, stdin)
    data = stdin
    return if data.nil?
    data.scan(/\d{1,1000}/).map(&:to_i).uniq!.sort.reverse.first(n)
  end
end
