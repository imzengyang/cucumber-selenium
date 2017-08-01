var driver = require('../support/world').driver;
var By = require('../support/world').By;
var assert = require('assert');
var until = require('../support/world').until;

module.exports = function () {



    this.Then(/^内容输入使用docstring$/, function (string) {
        driver.actions().mouseMove(driver.findElement(By.css('div.CodeMirror-cursor'))).click().perform();
        let editor = driver.wait(until.elementLocated(By.css('#create_topic_form > fieldset > div > div > div.CodeMirror.cm-s-paper > div.CodeMirror-scroll > div.CodeMirror-sizer > div > div > div > div:nth-child(4)')), 3000);
        return driver.actions().mouseMove(editor).sendKeys(string).perform().then(() => {
            // driver.sleep(3000);
        });
    });
}
