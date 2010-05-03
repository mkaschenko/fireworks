class Invitation < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :recipient

  named_scope :latest, :order => 'created_at DESC', :limit => 32

  def self.recipients
    all.collect(&:recipient)
  end
end
