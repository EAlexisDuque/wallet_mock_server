Rails.application.routes.draw do
  get '/users/me', to: 'cards#get_employee'
  post '/auth', to: 'auths#login'
  put '/users/password', to: 'auths#change_password'
  put '/users/accounts', to: 'auths#change_profile'
  post '/devices', to: 'devices#register_fcm_token'
  delete '/devices', to: 'devices#un_register_fcm_token'
  get '/notificationSettings', to: 'notifications#obtain_preferences'
  post '/notificationSettings', to: 'notifications#set_preferences'
  post '/heartcards/:id/verifications/ocr', to: 'cards#upload_picture'
  get '/licenses', to: 'cards#get_user_cards'
  post '/heartcards/:id/verifications/ecard', to: 'cards#upload_number'
  put '/ocrAsserts/:id', to: 'cards#add_renewal_date'
  get '/verifications/ecard/:card_id', to: 'cards#get_card_image'
  get '/accesscodes/:code/accounts', to: 'sign_up#get_account_details'
  get '/employees', to:'sign_up#get_employer_details'
  post '/accessCodes/:code', to: 'sign_up#create_account'
  post '/applications/wallet/accessCodes', to: 'sign_up#resend_code'
  post '/applications/wallet/passwordResetTokens', to: 'sign_up#reset_password'
  get '/users/workplaces', to:'workplaces#get_workplaces'
  post '/unmonitored/:id', to: 'unmonitored#upload_unmonitored'
  get '/applicants/:applicantId/requirements', to:'requirements#get_requirements'
  post '/applicants/:applicantId/requirements/:requirementId/automated', to: 'requirements#add_licenses_or_certification'
  post '/applicants/:applicantId/requirements/:requirementId/unmonitored', to: 'requirements#upload_picture'
  post '/applicants/:applicantId/requirements/:requirementId/ocr', to: 'requirements#upload_pictures'
  put '/applicants/:applicantId/requirements/:requirementId/unmonitored', to: 'requirements#upload_picture'
  put '/applicants/:applicantId/requirements/:requirementId/ocr', to: 'requirements#upload_pictures'
  post '/applicants/:applicantId/requirements/:requirementId/ecard', to: 'requirements#upload_ecard'
  post '/applicants/:applicantId/requirements/:requirementId/tbo', to: 'requirements#tbo'
  put '/applicants/:applicantId/requirements/submit', to: 'requirements#submit'
  get '/applicants/:applicantId/requirements/:requirementId/group', to: 'requirements#get_group_of_requirements'
  delete '/applicants/:applicantId/requirements/:requirementId', to: 'requirements#delete_tbo'
  put '/messages/:id', to: 'inbox#check_message'
  get '/states', to: 'states#get_states'
  get '/medicalLicenses', to: 'provider#get_provider_licenses'
  post '/medicalLicenses', to: 'provider#save_provider_licenses'
  post '/medicalLicenses/:id', to: 'provider#save_provider_licenses'
  delete '/medicalLicenses/:id', to: 'provider#delete_provider_licenses'
  get '/boardCertifications', to: 'board_certifications#get_board_certifications'
  post '/boardCertifications', to: 'board_certifications#save_board_certifications'
  post '/boardCertifications/:id', to: 'board_certifications#save_board_certifications'
  delete '/boardCertifications/:id', to: 'board_certifications#delete_board_certification'
  get '/globalsettings/specialties', to: 'specialties#get_specialties'
  get '/practiceLocations', to: 'practice_locations#get_practice_locations'
  post '/practiceLocations', to: 'practice_locations#save_practice_locations'
  post '/practiceLocations/:id', to: 'practice_locations#save_practice_locations'
  delete '/practiceLocations/:id', to: 'practice_locations#delete_practice_locations'
  get '/setupData' , to: 'setup_data#setup'
  get '/educations', to: 'educations#get_educations'
  post '/educations', to: 'educations#save_educations'
  post '/educations/:id', to: 'educations#save_educations'
  delete '/educations/:id', to: 'educations#delete_educations'
  get '/hospitalAffiliations' , to: 'hospital_affiliations#get_hospital_affiliations'
end
