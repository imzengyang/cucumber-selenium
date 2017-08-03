Feature: 用户登录 使用datatable
参考：https://github.com/cucumber/cucumber-js/tree/v1.3.3
https://github.com/cucumber/cucumber-js/blob/v1.3.3/docs/support_files/data_table_interface.md
https://github.com/imzengyang/cucumber-selenium

  Scenario: 登录
    Given 打开网站首页
    When 点击登录按钮
    Then 分别输入用户名和密码
    |username| imzack|
    |pass|123456|
    And 点击登录
