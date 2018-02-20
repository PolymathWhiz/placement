class Post < ApplicationRecord
  belongs_to :employer

  before_create :validate_date

  validates_presence_of :title, :employer_id, :description, :application_ends, :position_type, :requirement, :responsibilities, :candidate_description, :candidate_qualification

  validate :validate_date

  private

  def validate_date
    errors.add(:application_ends, " date can't be in the past") if
        !application_ends.blank? and application_ends < Date.today
  end
end
