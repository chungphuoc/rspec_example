class Job < ActiveRecord::Base
  has_many :candidates
  belongs_to :company
  validates_presence_of :name
end
