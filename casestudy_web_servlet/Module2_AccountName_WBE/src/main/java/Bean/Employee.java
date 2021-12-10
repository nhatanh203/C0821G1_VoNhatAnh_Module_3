package Bean;

public class Employee {
    private int id;
    private String name;
    private String birthday;
    private int indentityCard;
    private int phoneNumber;
    private String email;
    private String address;

    public Employee() {
    }

    public Employee(int id, String name, String birthday, int indentityCard, int phoneNumber, String email, String address) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.indentityCard = indentityCard;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
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

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getIndentityCard() {
        return indentityCard;
    }

    public void setIndentityCard(int indentityCard) {
        this.indentityCard = indentityCard;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
