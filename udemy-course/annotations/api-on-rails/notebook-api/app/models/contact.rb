class Contact < ApplicationRecord
  belongs_to :kind, optional: true

  def author
    "Vinicius"
  end

  def description
    self.kind.description
  end

  def as_json(options={})
    super(
      root: true,
      methods: [:description, :author],
      include: {kind: { only: :description}}
    )
  end
end
