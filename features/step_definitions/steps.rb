require_relative '../support/env'

Given("open the website") do
  @driver.manage.window.maximize
  @driver.navigate.to "https://phptravels.com/demo/"
  
  #popup handling
  if @driver.find_elements(:id,'onesignal-popover-cancel-button').size > 0
    @driver.find_element(:id, 'onesignal-popover-cancel-button').click
  end
  sleep(@time)
  # element = @wait.until {@driver.find_element(:id, 'onesignal-popover-cancel-button') }
  # element.click

  # if @driver.find_elements(:class, 'modalContent').size > 0
  #   @driver.find_element(:class, 'mc-closeModal').click
  # end
  popout = @wait.until {@driver.find_element(:class, 'mc-closeModal')}
  popout.click
  sleep(@time)
end

Then("user click on main menu") do
  @driver.find_element(:link, 'DEMO').click
  @driver.find_element(:link, 'PRICING').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[3]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[4]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[5]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[6]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[7]/span/span').click
  @driver.find_element(:link,'LOGIN').click
  sleep(@time)
  # @driver.save_screenshot('screenshot/login.png')
  @driver.action.key_down(:ctrl).send_keys('w')
end  

Then("user click on all hyperlink") do
  #FEATURES submenu
  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Hotels Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Flights Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Tours Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Cars Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Offers Module').click
  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Blog Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Newsletter Module').click

  @driver.action.move_to(@driver.find_element(:xpath, '//*[@id="main-menu"]/ul/li[3]/span/span')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'CMS Module').click

  #PRODUCT submenu
  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Documentation').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Features').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Technology').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Requirements').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Changelog').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Updates').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Desktop App').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Mobile App').click

  @driver.action.move_to(@driver.find_element(:link, 'PRODUCT')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'How to Start').click

  #HOSTING's submenu
  @driver.action.move_to(@driver.find_element(:link, 'HOSTING')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Shared Hosting').click

  @driver.action.move_to(@driver.find_element(:link, 'HOSTING')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'VPS Hosting').click

  @driver.action.move_to(@driver.find_element(:link, 'HOSTING')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Dedicated Servers').click

  #SERVICES's submenu
  @driver.action.move_to(@driver.find_element(:link, 'SERVICES')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Product Services').click

  @driver.action.move_to(@driver.find_element(:link, 'SERVICES')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Integrations').click

  @driver.action.move_to(@driver.find_element(:link, 'SERVICES')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Customizations').click

  @driver.action.move_to(@driver.find_element(:link, 'SERVICES')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Product Services').click

  #COMPANY's submenu
  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'About Us').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Contact Us').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'The Team').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Affiliate').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Media Kit').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Careers / Jobs').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Blog Articles').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Privacy Policy').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Terms & Conditions').click

  @driver.action.move_to(@driver.find_element(:link, 'COMPANY')).perform #hover
  sleep(@time)
  @driver.find_element(:link, 'Forums').click
end

