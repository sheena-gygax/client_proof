class Client < ApplicationRecord
before_create :generate_uuid, unless: :uuid?    
private
  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
