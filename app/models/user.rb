# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  has_many :messages
  has_many :thrashes
  has_many :accepted_bookings

  validates :username, presence: true
end
