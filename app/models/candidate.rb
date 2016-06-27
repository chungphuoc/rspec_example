class Candidate < ActiveRecord::Base
  belongs_to :job
  validates_presence_of %w(full_name)
end
