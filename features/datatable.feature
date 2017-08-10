Feature: 用户发帖，回复场景
发贴回复， 都需要用户登录的操作，
使用background 定义登录
使用Docstring。

  Background: 登录
    Given 打开网站首页
    When 点击登录按钮
    Then 用户名输入"imzack"
    And 密码输入"123456"
    And 点击登录
    Then 我应该登录成功并且显示用户名"imzack"

  Scenario: 发帖
    Given 点击发布话题按钮
    When 板块选择分享
    Then 标题输入
      | title | helloworld.title |
    Then 内容输入使用docstring
      """
      # hello world.
      ## hi everyone.
      """