package in.jt.kaizen.smoothie;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;
import java.util.Map;

public class SmoothieStepDefinitions {

    @Given("the following drink categories:")
    public void the_following_drink_categories(List<Map<String, String>> drinkCategories) {

        throw new io.cucumber.java.PendingException();
    }

    @Given("^(.*) is a Morning Freshness member$")
    public void is_a_morning_freshness_member(String name) {
        throw new io.cucumber.java.PendingException();
    }

    @When("^(.*) purchases (\\d+) (.*) drinks?")
    public void purchases_drinks(String name,
                                 Integer amount,
                                 String drink) {
        throw new io.cucumber.java.PendingException();
    }

    @Then("he should earn {int} points")
    public void he_should_earn_points(Integer expectedPoints) {
        throw new io.cucumber.java.PendingException();
    }


    @Given("his favorite flavors are:")
    public void his_favorite_flavors_are(List<String> favorites) {
        throw new io.cucumber.java.PendingException();
    }

    @Given("the daily specials are:")
    public void the_daily_specials_are(List<Map<String, String>> specials) {
        throw new io.cucumber.java.PendingException();
    }

    @Given("he should see the following calorie counts")
    public void calorie_counts_are(Map<String, Integer> calorieCounts) {
        throw new io.cucumber.java.PendingException();
    }

    @When("he should see the following calorie counts:")
    public void he_should_see_the_following_calorie_counts(List<Map<String, String>>  calorieCounts) {
        throw new io.cucumber.java.PendingException();
    }

}
