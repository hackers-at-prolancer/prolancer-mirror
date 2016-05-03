Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1040649896010489', '02b1dd70a21cb67324ae8807ac0085de',
  :scope => 'email', :display => 'popup', :info_fields => 'name,email'
end