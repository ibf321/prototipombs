RailsAdmin.config do |config|

  ### Popular gems integration
  config.main_app_name = ["Sistema de Gestão da Informação - MBS", ""]

   ## Links add ##
  config.navigation_static_links = {
   'OneBitCode' => 'http://onebitcode.com'
  }
  config.navigation_static_label = "Lins Úteis"

    ##Icons##
  config.model Donor do
    navigation_icon 'fa fa-id-card-o'
  end

  config.model Educational do
    navigation_icon 'fa fa-pencil'
  end

  config.model Institution do
    navigation_icon 'fa fa-university'
  end

  config.model User do
    navigation_icon 'fa fa-id-card'
  end

  config.model Participant do
    navigation_icon 'fa fa-list'
  end

  config.model Address do
    navigation_icon 'fa fa-address-card'
  end

  config.model Responsible do
    navigation_icon 'fa fa-address-book'
  end

  config.model Withdrawal do
    navigation_icon 'fa fa-calendar-check-o'
  end

  config.model OperatingUnit do
    navigation_icon 'fa fa-building'
  end

  config.model Ageranger do
    navigation_icon 'fa fa-users'
  end

  

  #== Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end
  # == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true





# config.model User do
#   create do
#     field  :name
#     field  :document
#     field  :kind
#     field  :status
#     field  :notes
#     field  :unit
#     field  :email
#     field  :password
#     field  :password_confirmation
#   end
# end

#   edit do
#     field  :name
#     field  :document
#     field  :kind
#     field  :status
#     field  :notes
#     field  :unit
#     field  :email
#     field  :password
#     field  :password_confirmation
#   end
# end
# end

# config.model Donor do
#   create do
#      field  :reason
#      field  :fantasy
#      field  :kind
#      field  :cnpj_number
#      field  :cpf
#      field  :registration_data
#      field  :email
#      field  :withdrawal_day
#      field  :obs
#      field  :phone
#      field  :status
#      field  :disclosure
#      field  :obs
#     end
#   edit do
#     field  :reason
#     field  :fantasy
#     field  :kind
#     field  :cnpj_number
#     field  :cpf
#     field  :registration_data
#     field  :email
#     field  :withdrawal_day
#     field  :obs
#     field  :phone
#     field  :status
#     field  :disclosure
#     field  :obs
#     end
# end

# # config.model Additional do
# #   visible false
# # end

# # config.model Address do
# #   visible false
# # end

# # config.model Participant do
# #   visible false
# # end

# # config.model Responsible do
# #   visible false
# # end

# # config.model Withdrawal do
# #   visible false
# # end

# # config.model Ageranger do
# #   visible false
# # end

# # config.model OperatingUnit do
# #   visible false
# # end

# # config.model Address  do
# #   edit do
# #     field :country
# #     field :city
# #     field :state
# #     field :neighborhood
# #     field :street
# #     field :number
# #     field :complement
# #     field :zip_code

# #     field :doner_id, :hidden do
# #       default_value do
# #         bindings[:view]._current_user.id
# #       end
# #     end

# #     field :educational_id, :hidden do
# #       default_value do
# #         bindings[:view]._current_user.id
# #       end
# #     end
# #   end
# # end

# config.model Participant  do
#   edit do
#     field  :name
#     field  :institution
#     field  :phone
#     field  :email

#     field :institution_id, :hidden do

#       default_value do
#         bindings[:view]._current_user.id
#       end
#     end
#   end
# end


# config.model Responsible  do
#   edit do
#     field  :name
#     field  :rg
#     field  :cpg
#     field  :function
#     field  :phone

#     field :doner_id, :hidden do
#       default_value do
#         bindings[:view]._current_user.id
#       end
#     end

#     field :institution_id, :hidden do
#       default_value do
#         bindings[:view]._current_user.id
#       end
#     end

#   end
# end






  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show



  end
end
