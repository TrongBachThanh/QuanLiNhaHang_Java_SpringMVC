package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Food")
public class Food {
	@Id @GeneratedValue
	private int id;
	private String eName;
	private String vName;
	private String image;
	private int cost;
	
	@ManyToOne
	@JoinColumn(name="FoodGroupId")
	FoodGroup foodgroup;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getvName() {
		return vName;
	}

	public void setvName(String vName) {
		this.vName = vName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public FoodGroup getFoodgroup() {
		return foodgroup;
	}

	public void setFoodgroup(FoodGroup foodgroup) {
		this.foodgroup = foodgroup;
	}
	
	
	
}
