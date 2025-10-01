Feature: Super Smoothie Loyalty Card Program

  The more smoothies your buy, the more points you earn.

  Background:
    Given the following drink categories:
      | Drink              | Category | Points |
      | Banana             | Regular  | 15     |
      | Triple Berry Blend | Fancy    | 20     |
      | Earl Grey          | Tea      | 10     |

  Scenario Outline:  Earning points when purchasing smoothies
    Given Michael is a Morning Freshness member
    When Michael purchases <Quantity> <Drink> drinks
    Then he should earn <Points> points
    Examples:
      | Drink              | Quantity | Points |
      | Banana             | 2        | 15     |
      | Triple Berry Blend | 1        | 20     |
      | Earl Grey          | 3        | 30     |


  Scenario: Proposing appropriate special deals
    Given Michael is a Morning Freshness member
    And his favorite flavors are:
      | Banana |
      | Apple  |
    When the daily specials are:
      | Title                       | Flavors               |
      | 20% on all Banana Smoothies | Banana                |
      | 10% on all Berry Smoothies  | Strawberry, Blueberry |
    And he should see the following calorie counts:
      | Basic Banana Smoothie         | 180 |
      | Deluxe Banana Smoothie        | 240 |
      | Banana and Ice Cream Smoothie | 350 |
