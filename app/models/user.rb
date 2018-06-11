class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         # OPTIMIZE Decide whether to use delete_all or destroy
         # initial thinking is that if a club creator leaves a club, we don't
         # want all of the children/grandchildren getting deleted, it'd probably
         # be good to be able to recover stuff
         # see http://notes.jerzygangi.com/dependent-destroy-vs-dependent-delete-all-in-rails-models/
         has_many :clubs, dependent: :delete_all

end
