require "mog/client"

module Mog
  # Alias for Mog::Client.new
  #
  # @return [Mog::Client]
  def self.client(options={})
    Mog::Client.new(options)
  end

  # Alias for Mog::Client.new
  #
  # @return [Mog::Client]
  def self.new(options={})
    Mog::Client.new(options)
  end

  # Delegate to Mog::Client
  def self.method_missing(method, *args, &block)
    return super unless new.respond_to?(method)
    new.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private = false)
    new.respond_to?(method, include_private) || super(method, include_private)
  end
end