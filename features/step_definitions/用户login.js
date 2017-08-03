var driver = require('../support/world').driver;
var By = require('../support/world').By;
var assert = require('assert');
module.exports = function () {

    this.Given(/^打开网站首页$/,{timeout: 60 * 1000}, function () {
        return driver.get("http://192.168.219.129:3000");
    });

    this.When(/^点击登录按钮$/, function () {
        return driver.findElement({ linkText: '登录' }).click();
    });

    this.Then(/^用户名输入"([^"]*)"$/, function (arg1) {
        return driver.findElement({ id: "name" }).sendKeys(arg1);
    });

    this.Then(/^密码输入"([^"]*)"$/, function (arg1) {
        return driver.findElement({ id: 'pass' }).sendKeys(arg1);
    });

    this.Then(/^点击登录$/, function () {
        return driver.findElement({ css: ".span-primary" }).click();
    });

    this.Then(/^我应该登录成功并且显示用户名"([^"]*)"$/, function (arg1) {
        return driver.findElement(By.css('#sidebar > div:nth-child(1) > div.inner > div > div > span.user_name > a')).getText().then((text) => {
            console.log(text, arg1, text === arg1, text !== arg1);
            return assert.deepEqual(text, arg1);
        })
    });


    this.Then(/^我应该登录失败并且提示"([^"]*)"$/, function (arg1) {
        return driver.findElement(By.css('#content > div > div.inner > div > strong')).getText().then((text) => {
            return assert.deepEqual(text, arg1);
        })
    });

    this.Then(/^我应该登录"([^"]*)"验证信息"([^"]*)"$/, function (arg1, arg2) {
        // 成功或失败
        switch (arg1) {
            case "成功":
                return driver.findElement(By.css('#sidebar > div:nth-child(1) > div.inner > div > div > span.user_name > a')).getText().then((text) => {
                    return assert.deepEqual(text, arg2);
                })
                break;
            case "失败":
                return driver.findElement(By.css('#content > div > div.inner > div > strong')).getText().then((text) => {
                    return assert.deepEqual(text, arg2);
                })
                break;
            default:
                return false;
                break;
        }
    });


}