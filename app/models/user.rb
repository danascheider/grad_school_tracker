class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :programs

  def name
    has_name? ? "#{first_name} #{last_name}" : "New User"
  end

  private

  def has_name?
    first_name || last_name && !(first_name.try!(:empty?) && last_name.try!(:empty?))
  end
end
