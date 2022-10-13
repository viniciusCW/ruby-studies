class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  # belongs_to :kind do
  #   # return nil if object.kind
  #   link(:related) { contact_kind_url(object.kind) }
  # end

  has_many :phones do
    link(:related) { contact_phones_url(object) }
  end

  has_one :address do
    link(:related) { contact_address_url(object) }
  end

  # link(:self) { contact_path(object) }
  # link(:kind) { kind_path(object.kind) }

  meta do
    { author: "Vinicius"}
  end

  def attributes(*args)
    h = super(*args)
    # h[:birthdate] = I18n.l(object.birthdate) unless object.birthdate.blank?
    h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    h
  end
end
