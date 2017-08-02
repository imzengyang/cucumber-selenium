@userlogin
Feature: 用户登录
测试点： 不同账户登录 有不同情况

  Scenario: 正确用户名和密码的情况
    Given 打开网站首页
    When 点击登录按钮
    Then 用户名输入"imzack"
    And 密码输入"123456"
    And 点击登录
    Then 我应该登录成功并且显示用户名"imzack"

  @loginerror
  Scenario: 正确用户名和密码的情况
    Given 打开网站首页
    When 点击登录按钮
    Then 用户名输入"dadad"
    And 密码输入"123456"
    And 点击登录
    Then 我应该登录失败并且提示"用户名或密码错误"

  @loginout
  Scenario Outline: 用户登录
  不同情况情况的用户登录
    Given 打开网站首页
    When I click the btn "hello" and click 3 times
    When 点击登录按钮
    Then 用户名输入"<用户名>"
    And 密码输入"<密码>"
    And 点击登录
  # 状态为成功或失败，成功：显示用户名imzack，失败：提示用户名或密码错误
    Then 我应该登录"<登录状态>"验证信息"<验证>"
    Examples: 
      | 用户名         | 密码       | 登录状态 | 验证       |
      | imzack      | 123456   | 成功   | imzack   |
      | xiaoming    | 12232132 | 失败   | 用户名或密码错误 |
      | xiaomi1g    | 12232132 | 失败   | 用户名或密码错误 |
      | xiaom22g    | 12232132 | 失败   | 用户名或密码错误 |
      | xiaom3344g  | 12232132 | 失败   | 用户名或密码错误 |
      | xiaoming444 | 12232132 | 失败   | 用户名或密码错误 |