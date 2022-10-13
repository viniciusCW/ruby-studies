class Contact < ApplicationRecord
  belongs_to :kind, optional: true
  has_many :phones
  has_one :address
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address

  validates_presence_of :kind
  validates_presence_of :address

  paginates_per 5 #Kaminari

  def author
    "Vinicius"
  end

  def description
    self.kind.description
  end

  # def as_json(options={})
  #   super(
  #     root: true,
  #     methods: [:description, :author],
  #     include: {kind: { only: :description}}
  #   )
  # end
end
