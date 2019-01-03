Given("open the website") do
  @driver.manage.window.maximize
  # @driver.navigate.to "https://phptravels.com/demo/"
  @driver.navigate.to "https://google.com"
  sleep(@time)
  
  #popup handling
  if @driver.find_elements(:id,'onesignal-popover-cancel-button').size > 0
    @driver.find_element(:id, 'onesignal-popover-cancel-button').click
  end
  sleep(@time)
  # element = @wait.until {@driver.find_element(:id, 'onesignal-popover-cancel-button') }
  # element.click

  if @driver.find_elements(:class, 'modalContent').size > 0
    @driver.find_element(:class, 'mc-closeModal').click
  end
  # popout = @wait.until {@driver.find_element(:class, 'mc-closeModal')}
  # popout.click
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

Then("user click on messenger") do
  @driver.switch_to.frame('wh-widget-send-button-iframe')
  #click on wa button
  @driver.action.move_to(@driver.find_element(:id, 'wh-widget-send-button-wrapper-list')).perform
  sleep(@time)
  @driver.find_element(:xpath, '//*[@id="wh-widget-send-button-wrapper-list"]/a[2]/div[1]').click
  sleep(@time)
  @driver.action.key_down(:ctrl).send_keys('w')

  #click on fb button
  @driver.find_element(:xpath, '//*[@id="wh-widget-send-button-wrapper-list"]/a[1]/div[1]').click
  sleep(@time)

  @driver.switch_to.default_content
end

Then("user click on live chat") do
  @driver.switch_to.frame("chat-widget")
  sleep(@time)
  @driver.find_element(:id, 'Page-1').click
  sleep(@time)
  @driver.find_element(:name, 'name').send_keys('hahaha')
  @driver.find_element(:name, 'email').send_keys('hahahaha@example.com')
  @driver.find_element(:xpath, '//*[@id="widget-global-ytaweg5ivm"]/div/div/div/div/div[3]/div/div/div/form/div[4]/button').click #click button start chat
  sleep(@time)
  @wait.until { /Hello. How may I help you?/.match(@driver.page_source)}
  @driver.find_element(:xpath, '//*[@id="widget-global-5clyqepgc6f"]/div/div/div/div/div[5]/div/textarea').send_keys('halo kak')
  @driver.find_element(:id, 'send').click
  sleep(5)
end


Then("search for {string}") do |string|
  @driver.find_element(:name, 'q').click
  @driver.find_element(:name, 'q').send_keys(string)
  @driver.find_element(:name, 'q').submit
end