package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Branch")
public class Branch {
	@Id @GeneratedValue
	private int id;
	private String name;
	private String phone;
	
	
	@OneToMany(mappedBy="branch", fetch=FetchType.EAGER)
	private Collection<TableBook> tablebooks;


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


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Collection<TableBook> getTablebooks() {
		return tablebooks;
	}


	public void setTablebooks(Collection<TableBook> tablebooks) {
		this.tablebooks = tablebooks;
	}
	
	
}
