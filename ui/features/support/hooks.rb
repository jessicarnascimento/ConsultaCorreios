require 'selenium-webdriver'

Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.quit
  Capybara.page.driver.browser.manage.window.maximize
end

After do |scn|
  if scn.failed?
    save_screenshot("data/screenshots/bugs/bug-(#{@@tag}).png")
    Metodos.new.encerra_filmagem
  end
end

Before do |scn|
  @@tag = scn.source_tag_names[1]
  @@scn = scn.name
end