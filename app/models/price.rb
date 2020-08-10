class Price < ApplicationRecord
  has_many :appt_prices, dependent: :destroy
  has_many :appointments, through: :appt_prices, dependent: :destroy

  def to_s
    name
  end
end