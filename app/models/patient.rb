class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_many :vitals, through: :visits
  has_many :cbcs, through: :visits
  has_many :bmps, through: :visits
  has_many :ptptts, through: :visits
  has_many :dxs, through: :visits
  serialize :pmh
  serialize :homeMeds
  serialize :surgicalHx
end
