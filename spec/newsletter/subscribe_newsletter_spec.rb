require 'rails_helper.rb'

    feature 'Subscribing newsletter' do
      scenario 'can subscribe at the newsletter' do
        # 1. go to root where will be button to Subscribe:
        visit '/landing1'
        # 2. Fill form - add email
        fill_in 'Entrez votre e-mail', with: 'foobar@exemple.com'
        # 3. Click on submit form button
        click_button "S'inscrire"
        # 4.
        expect(current_path).to eq('/landing1')
    end
end