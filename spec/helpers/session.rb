module SessionHelpers

 def sign_in(email:, password:)
   visit '/sessions/new'
   fill_in :email, with: email
   fill_in :password, with: password
   click_button 'Sign in'
 end

 def sign_up(email: 'bryony@bryony.com',
             password: 'oranges',
             name: 'bryony',
             username: 'bryorama',
             password_confirmation: 'oranges')
   visit '/users/new'
   fill_in :email, with: email
   fill_in :password, with: password
   fill_in :name, with: name
   fill_in :username, with: username
   fill_in :password_confirmation, with: password_confirmation
   click_button 'Sign up'
 end

end
