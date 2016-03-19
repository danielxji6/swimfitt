class User < ActiveRecord::Base
  has_many :workout
  has_secure_password

	def self.confirm(params)
		@user = User.find_by({username: params[:username]})
		@user.try(:authenticate, params[:password])
	end

	validates :full_name, :email, :password, presence: true, length: {maximum: 255}
	validates :password, length: { minimum: 3, message: "must be at least 3 characters" }
	validates :email, uniqueness: true

	validates :email, format: { with: /@/ }, length: { minimum: 6 }
end
