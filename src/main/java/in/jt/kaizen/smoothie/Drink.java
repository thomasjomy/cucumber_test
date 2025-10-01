package in.jt.kaizen.smoothie;


public class Drink {
    private final String name;
    private final DrinkCategory category;

    public Drink(String name, DrinkCategory category) {
        this.name = name;
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public DrinkCategory getCategory() {
        return category;
    }
}
