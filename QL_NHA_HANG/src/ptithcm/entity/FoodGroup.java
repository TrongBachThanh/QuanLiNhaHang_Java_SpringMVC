package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="FoodGroup")
public class FoodGroup {
	@Id @GeneratedValue
	private int id;
	private String eName;
	private String vName;
	
	
	@OneToMany(mappedBy="foodgroup", fetch=FetchType.EAGER)
	private Collection<Food> foods;
	
	
	
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
	public Collection<Food> getFoods() {
		return foods;
	}
	public void setFoods(Collection<Food> foods) {
		this.foods = foods;
	}
	
}
