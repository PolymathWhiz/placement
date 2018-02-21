class Post < ApplicationRecord
  belongs_to :employer
  validate :valid_date

  validates_presence_of :title, :employer_id, :description, :application_ends, :position_type, :requirement, :responsibilities, :candidate_description, :candidate_qualification

  private

  def valid_date
    if !application_ends.blank? && (application_ends < Date.today)
      errors.add(:application_ends, " date can't be in the past")
    end
  end
end
