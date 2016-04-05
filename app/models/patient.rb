class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_many :vitals, through: :visits
  has_many :cbc,through: :visits
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
