package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\jose9\\Documents\\TQS-Pract2-1489852-1526535-main\\cucumber-java-skeleton\\chromedriver.exe");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("I go to the home page")
    public void iGoToTheHomePage() {
        driver.get("https://www.megaotaku.com/");

    }

    @Given("I go to the login page")
    public void iGoToTheLoginPage() {
        driver.get("https://www.megaotaku.com/iniciar-sesion?back=my-account");

    }

    @Given("I go to the url {string}")
    public void iGoToTheUrl(String text){
        driver.get(text);
    }

    @When("Wait {int} miliseconds")
    public void Wait(int miliseconds) throws InterruptedException {
        Thread.sleep(miliseconds);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text) {
        driver.findElement(By.linkText(button_text)).click();
    }


    @When("I click by div {string}")
    public void iClickByDiv(String text) {
        driver.findElement(By.xpath("//div[@class='"+text+"']")).click();
    }

    @When("I click by href {string}")
    public void iClickByhref(String text) {
        driver.findElement(By.xpath("//a[@href='"+text+"']")).click();
    }

    @When("I click by AId {string}")
    public void iClickByAId(String text) {
        driver.findElement(By.xpath("//a[@id='"+text+"']")).click();
    }

    @When("I click by class {string}")
    public void iClickByclass(String text) {
        driver.findElement(By.xpath("//button[@class='"+text+"']")).click();

    }

    @When("I click by class {string} li")
    public void iClickByclassLi(String text) {
        driver.findElement(By.xpath("//li[@class='"+text+"']")).click();

    }
/**  **/
    @When("I click by class {string} div")
    public void iClickByclassDiv(String text) {
        driver.findElement(By.xpath("//div[@class='"+text+"']")).click();

    }
    /**  **/
    @When("I click form {string}")
    public void iClickByForm(String text) {
        driver.findElement(By.xpath("//button[@type='"+text+"']")).click();

    }

    @When("I type {string} value in {string} input")
    public void ITypeInInput(String text, String input){
        WebElement field = driver.findElement(By.xpath("//input[@name='"+input+"']"));
        field.sendKeys(text);
    }

    @When("I type {string} value in {string} searchbar")
    public void ITypeInSearchBar(String text, String input){
        WebElement field = driver.findElement(By.xpath("//input[@class='"+input+"']"));
        field.sendKeys(text);
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @Then ("I should go to the URL {string}")
    public void urlIs(String url){
        Assertions.assertEquals(url, driver.getCurrentUrl());
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
