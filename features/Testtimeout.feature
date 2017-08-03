Feature: 验证默认的超时时间
cucumber 默认超时时间为5秒
https://github.com/cucumber/cucumber-js/blob/v1.3.3/docs/support_files/timeouts.md

  Scenario: 用户登录
  我们故意让操作久一点，看下超出默认超时时间会有什么样的情况
    Given 打开网站首页
    When 点击登录按钮
    Then 用户名输入"imzack"
    And 密码输入"123456"
    And 等待10秒点击登录
  