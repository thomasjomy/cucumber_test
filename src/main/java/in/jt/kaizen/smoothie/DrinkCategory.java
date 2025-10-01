package in.jt.kaizen.smoothie;

public enum DrinkCategory {
    REGULAR, FANCY, TEA;

    public static DrinkCategory getCategory(String drinkCategory) {
        DrinkCategory result = null;

        if (drinkCategory.equalsIgnoreCase("regular")) {
            result = DrinkCategory.REGULAR;
        } else if (drinkCategory.equalsIgnoreCase("fancy")) {
            result = DrinkCategory.FANCY;
        } else if (drinkCategory.equalsIgnoreCase("tea")) {
            result = DrinkCategory.TEA;
        }

        return result;
    }
}
