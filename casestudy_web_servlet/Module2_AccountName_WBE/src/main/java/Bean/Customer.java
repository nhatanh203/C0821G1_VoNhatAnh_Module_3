package Bean;

public class Customer {
    private CharSequence id;
    private int typeOfId;
    private String name;
    private String birthday;
    private String gender;
    private String address;

    public Customer() {
    }

    public Customer(CharSequence id, int typeOfId, String name, String birthday, String gender, String address) {
        this.id = id;
        this.typeOfId = typeOfId;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.address = address;
    }

    public CharSequence getId() {
        return id;
    }

    public void setId(CharSequence id) {
        this.id = id;
    }

    public int getTypeOfId() {
        return typeOfId;
    }

    public void setTypeOfId(int typeOfId) {
        this.typeOfId = typeOfId;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
