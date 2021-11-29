package customer_package;

public class Customer {
    private String name;
    private String date;
    private String address;

    public Customer() {
    }

    public Customer(String name, String date, String address) {
        this.name = name;
        this.date = date;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
