package in.praneeth.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity(name = "DATA")
public class PersonaDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "AGE")
    private Integer age;

    @Column(name = "BLOODGROUP")
    private String bloodgroup;

    @Column(name = "SEX")
    private String sex;
    
    @Column(name = "CONTACT")
    private Long contact;
    

    @Column(name = "CITY")
    private String city;
    
 
	@Column(name = "DISTRICT")
    private String district;
    
    @Column(name = "PINCODE")
    private Long pincode;

  

    static {
        System.out.println("ENTITY CLASS CREATED");
    }

    public PersonaDetails() {
        System.out.println("ENTITY OBJECT CREATED");
    }

    @Override
	public String toString() {
		return "PersonaDetails [id=" + id + ", name=" + name + ", age=" + age + ", bloodgroup=" + bloodgroup + ", sex="
				+ sex + ", contact=" + contact + ", city=" + city + ", district=" + district + ", pincode=" + pincode
				+ "]";
	}

    // Getters and setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public Integer getAge() { return age; }
    public void setAge(Integer age) { this.age = age; }

    public String getBloodgroup() { return bloodgroup; }
    public void setBloodgroup(String bloodgroup) { this.bloodgroup = bloodgroup; }

    public String getSex() { return sex; }
    public void setSex(String sex) { this.sex = sex; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }
    
    /**
   	 * @return the contact
   	 */
   	public Long getContact() {
   		return contact;
   	}

   	/**
   	 * @param contact the contact to set
   	 */
   	public void setContact(Long contact) {
   		this.contact = contact;
   	}

   	/**
   	 * @return the district
   	 */
   	public String getDistrict() {
   		return district;
   	}

   	/**
   	 * @param district the district to set
   	 */
   	public void setDistrict(String district) {
   		this.district = district;
   	}

   	/**
   	 * @return the pincode
   	 */
   	public Long getPincode() {
   		return pincode;
   	}

   	/**
   	 * @param pincode the pincode to set
   	 */
   	public void setPincode(Long pincode) {
   		this.pincode = pincode;
   	}
}

   