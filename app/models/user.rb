class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  enum kind: [:supervision, :unit_manager, :program_manager, :technicianm, :admin]
  enum status: [:active, :inactive]
  enum unit: [:Sesc_Juazeiro, :Sesc_Crato, :Sesc_Iguatu, :Sesc_Sobral, :Sesc_Fortaleza]

  # if User
  #     if user.kind == 'admin'
  #       enum kind: [:supervision, :unit_manager, :program_manager, :technicianm, :admin]
  #     elsif user.kind == 'unit_manager'
  #      enum kind: [:supervision, :unit_manager, :program_manager, :technicianm]

  #     end
  #   end
end
