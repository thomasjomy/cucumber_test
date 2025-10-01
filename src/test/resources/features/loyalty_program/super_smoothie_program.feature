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
      | Apple and Kale                | 160 |
      | Orange and Yogurt             | 240 |
      | Triple Berry Blend            | 380 |

  Scenario Outline: Smoothies are organized into categories based on their calorie count

  Each category is represented by a number of "flames" - the more "flames" the smoothie has,
  the more calories it contains.

    When a <Smoothie> contains <Calories> calories
    Then it should be classed as as <Flame Count> flame smoothie in the <Range> range
    Examples: Healthy Smoothies
    Smoothies under 300 calories are classified as 'Healthy'
      | Category  | Smoothie               | Calories | Flame Count | Range   |
      | Under 200 | Basic Banana Smoothie  | 180      | 1           | Healthy |
      | Under 200 | Apple and Kale         | 160      | 1           | Healthy |
      | Under 300 | Deluxe Banana Smoothie | 240      | 2           | Healthy |
      | Under 300 | Orange and Yogurt      | 240      | 2           | Healthy |
    Examples: Indulgent Smoothies
    Smoothies with 300 or more calories are considered 'Indulgent'
      | Under 400   | Banana and Ice Cream Smoothie | 350 | 3 | Indulgent |
      | Under 400   | Triple Berry Blend            | 380 | 3 | Indulgent |
      | 400 or more | Strawberry special            | 490 | 4 | Indulgent |
