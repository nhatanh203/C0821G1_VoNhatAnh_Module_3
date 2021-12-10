package Bean;

public class Service {
    private int id;
    private String name;
    private int area;
    private int rentalCost;
    private int maxOfPeople;
    private String roomStandard;
    private String description;
    private int poolAre;
    private int numberOfFloor;

    public Service() {
    }

    public Service(int id, String name, int area, int rentalCost, int maxOfPeople, String roomStandard, String description, int poolAre, int numberOfFloor) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.rentalCost = rentalCost;
        this.maxOfPeople = maxOfPeople;
        this.roomStandard = roomStandard;
        this.description = description;
        this.poolAre = poolAre;
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

    public int getRentalCost() {
        return rentalCost;
    }

    public void setRentalCost(int rentalCost) {
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

    public int getPoolAre() {
        return poolAre;
    }

    public void setPoolAre(int poolAre) {
        this.poolAre = poolAre;
    }

    public int getNumberOfFloor() {
        return numberOfFloor;
    }

    public void setNumberOfFloor(int numberOfFloor) {
        this.numberOfFloor = numberOfFloor;
    }
}
