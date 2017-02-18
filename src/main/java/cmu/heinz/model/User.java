package cmu.heinz.model;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Mouwu Lin
 * @AndrewID mouwul
 */

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    private String firstName;

    private String lastName;

    private String gender;

    private Integer seniority;

    private String title;

    private String unionRecruit;

    private String contractEmployee;

    private Date promotionDate;

    private Date hireDate;

    private Integer trainerId;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getSeniority() {
        return seniority;
    }

    public void setSeniority(Integer seniority) {
        this.seniority = seniority;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUnionRecruit() {
        return unionRecruit;
    }

    public void setUnionRecruit(String unionRecruit) {
        this.unionRecruit = unionRecruit;
    }

    public String getContractEmployee() {
        return contractEmployee;
    }

    public void setContractEmployee(String contractEmployee) {
        this.contractEmployee = contractEmployee;
    }

    public Date getPromotionDate() {
        return promotionDate;
    }

    public void setPromotionDate(Date promotionDate) {
        this.promotionDate = promotionDate;
    }

    public Date getHireDate() {
        return hireDate;
    }

    public void setHireDate(Date hireDate) {
        this.hireDate = hireDate;
    }

    public Integer getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(Integer trainerId) {
        this.trainerId = trainerId;
    }


}
