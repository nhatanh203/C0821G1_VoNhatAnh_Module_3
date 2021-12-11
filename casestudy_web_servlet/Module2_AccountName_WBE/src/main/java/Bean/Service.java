package Bean;

public class Service {
    private int id;
    private String name;
    private int area;
    private double rentalCost;
    private int maxOfPeople;
    private String roomStandard;
    private String description;
    private double poolArea;
    private int numberOfFloor;

    public Service() {
    }

    public Service(int id, String name, int area, double rentalCost, int maxOfPeople, String roomStandard, String description, double poolArea, int numberOfFloor) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.rentalCost = rentalCost;
        this.maxOfPeople = maxOfPeople;
        this.roomStandard = roomStandard;
        this.description = description;
        this.poolArea = poolArea;
        this.numberOfFloor = numberOfFloor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public double getRentalCost() {
        return rentalCost;
    }

    public void setRentalCost(double rentalCost) {
        this.rentalCost = rentalCost;
    }

    public int getMaxOfPeople() {
        return maxOfPeople;
    }

    public void setMaxOfPeople(int maxOfPeople) {
        this.maxOfPeople = maxOfPeople;
    }

    public String getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(String roomStandard) {
        this.roomStandard = roomStandard;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOfFloor() {
        return numberOfFloor;
    }

    public void setNumberOfFloor(int numberOfFloor) {
        this.numberOfFloor = numberOfFloor;
    }
}
