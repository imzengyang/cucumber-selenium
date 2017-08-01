var driver = require('../support/world').driver;
var By = require('../support/world').By;
var assert = require('assert');

module.exports = function() {


    this.Given(/^点击发布话题按钮$/, function () {
      return driver.findElement(By.css(".span-success")).click();
    });

    this.When(/^板块选择分享$/, function () {
      driver.findElement(By.id('tab-value')).click();
      return driver.findElement(By.css("#tab-value > option:nth-child(2)")).click();
    });

    this.Then(/^标题输入"([^"]*)"$/, function (arg1) {
      // Write code here that turns the phrase above into concrete actions
      return driver.findElement(By.id("title")).sendKeys(arg1);
    });

    this.Then(/^内容输入"([^"]*)"$/, function (arg1) {
      // Write code here that turns the phrase above into concrete actions
      return 'pending';
    });

    this.Given(/^打开帖子"([^"]*)"$/, function (arg1) {
      // Write code here that turns the phrase above into concrete actions
      return 'pending';
    });

    this.Then(/^点击提交按钮$/, function () {
      // Write code here that turns the phrase above into concrete actions
      return driver.findElement(By.css("#create_topic_form > fieldset > div > div > div.editor_buttons > input")).click();
    });

    this.When(/^添加回复内容"([^"]*)"$/, function (arg1) {
      // Write code here that turns the phrase above into concrete actions
      return 'pending';
    });

    this.Then(/^点击回复按钮$/, function () {
      // Write code here that turns the phrase above into concrete actions
      return 'pending';
    });

    this.Given(/^删除$/, function () {
      // Write code here that turns the phrase above into concrete actions
      return 'pending';
    });
};