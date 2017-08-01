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
    Then 标题输入"hello world, 你好，世界！"
    Then 内容输入使用docstring
    """
  # 查找元素

## 使用浏览器自带工具查找页面元素

- ### Chrome 浏览器- 开发者工具

 #### 开启开发者工具
 
 
## 使用selenium webdriver 查找元素

selenium-webdriver 查找元素的一些方法

[selenium js api](https://seleniumhq.github.io/selenium/docs/api/javascript/)

selenium webdriver 提供了findElement() 方法来定位到web页面元素，从而对页面元素进行一系列的操作过程。

方法 | 描述 | 参数 | 例子
--|--|--|--
By.className(name) | 通过classname属性查找元素 | name:元素的classname 属性| driver.findElement(By.className("username"))
By.css(selector)| 通过css 属性查找元素 | selector: 元素的css selector | driver.findElement(By.css("div > a")) 
By.id(id) | 通过id 属性来查找元素 | id： 元素的id值 |driver.findElement(By.id("num"))
By.linkText(text)| 通过链接文字查找元素 | text：链接文字 | driver.findElement(By.linkText("login"))
By.name(name) | 通过name属性查找元素 | name: 元素的name 属性 | driver.findElement(By.name("name"))
By.partinalLinkText(text) | 通过包含text链接文字来查找 例如web页面上有 “手机注册”，“邮箱注册” 使用By.partinalLinkText("注册") 可以找到这两个元素 | text：链接文字 | drvier.findElement(By.partinalLinkText("注册"))
By.TagName(name) | 通过tagname 查找元素 备注：现在这个方法已经过时，使用 By.css(tagName) 代替 | name: tag 值 | driver.findElement(By.TagName("pre"))
By.xpath(xpath) | 通过 xpath 路径查找元素 | xpath：xpath 值 | driver.findElement(By.xpath("div > pre"))



例子:
```
require("chromedriver");
var webdriver = require('selenium-webdriver'), // selenium 
    By =  webdriver.By;  // 查找元素

var driver = new webdriver.Builder().forBrowser('chrome').build();   // 创建chrome 浏览器

driver.get("https://autowebtest.github.io/myself/");  // 打开网页地址


driver.sleep(2 * 1000).then(function(){    //浏览器等待2秒
    return driver.findElement(By.css("body > div.wrapper > header > a")).click();    //通过By.css() 方法查找元素 进行点击操作
})

driver.findElement(By.css('body > div.wrapper > header > nav > ul > li:nth-child(1) > a')).click();   //通过By.css() 方法查找元素 进行点击操作

driver.sleep(5 * 1000).then(function(){    //等待 5秒
    return driver.quit();                         // 关闭 chrome 浏览器
})
```

- 打开新的标签页
```
driver.excuteJavascript("'new window','_blank'")
```
    """
    Then 点击提交按钮
