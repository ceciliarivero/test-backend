class User < Sequel::Model
  include Shield::Model

  def self.fetch(identifier)
    filter(username: identifier).first
  end
end
