class Tag < ActiveRecord::Base

  # RELATIONSHIPS
  belongs_to :category
  has_many :tag_assignments
  has_many :projects, through: :evidences

  # SCOPES
  scope :alphabetical, order('evidences.name')
  scope :active, where('tag.active = ?', true)
  scope :inactive, where('tags.active = ?', false)
  # scope :by_evidence, => (evidence_id) { joins(:tag_assignments).where("evidence_id = ?", evidence_id) }
  # scope :not_by_evidence, => (evidence_id) { joins(:tag_assignments).where("tag_id = id and evidence_id != ?", evidence_id) }

  # VALIDATIONS
  validates_presence_of :name


end
