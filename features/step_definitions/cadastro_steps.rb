Dado(/^que estou na tela de login do site ORANGEHRM e realizo o login$/) do
  visit ('http://opensource.demo.orangehrmlive.com')
  fill_in id="txtUsername" , :with => 'Admin'
  fill_in id="txtPassword" , :with => 'admin'
  click_button(id="btnLogin")
end

Quando(/^estou na home acesso a tela de cadastro$/) do
  click_link(id="menu_pim_viewPimModule")
  click_link(id="menu_pim_addEmployee")
end

Quando(/^realizo o cadastro$/) do
  fill_in id="firstName", :with => 'Baden'
  fill_in id="middleName", :with => 'Hecne'
  fill_in id="lastName", :with => 'Hecne'
  check(id="chkLogin")
  fill_in id="user_name", :with => 'badenhecne'
  fill_in id="user_password", :with => 'Santander@10'
  fill_in id="re_password", :with => 'Santander@10'
  select('Disabled', :from => id="status")
  click_button(id="btnSave")
end

Entao(/^vejo a mensagem cadastro realizado com sucesso$/) do
  assert_text('Personal Details')
end

#----------------------------------------------------------------------------------------------------#

Quando(/^estou na home acesso a tela para editar o cadastro$/) do
  click_link(id="menu_pim_viewPimModule")
  click_link(id="menu_pim_viewEmployeeList")
  click_link('Baden Hecne')
end

Quando(/^realizo a edicao$/) do
  click_button (id="btnSave")
  #fill_in id="personal_txtLicenNo", :with => '09867865442'
  fill_in id="personal_txtOtherID", :with => '7'
  fill_in id="personal_txtLicExpDate", :with => '2018-02-10'
  find(:xpath, '//*[@id="personal_optGender_1"]').click
  find(:xpath, '//*[@id="personal_cmbMarital"]/option[2]').click
  find(:xpath, '//*[@id="personal_cmbNation"]/option[27]').click
  fill_in id="personal_DOB", :with => '1988-10-02'
  click_button (id="btnSave")	
end

Entao(/^vejo a mensagem edicao realizada com sucesso$/) do
  assert_text('Successfully Saved')
end
