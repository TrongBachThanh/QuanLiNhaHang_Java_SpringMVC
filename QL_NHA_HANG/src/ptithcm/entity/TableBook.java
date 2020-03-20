package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name="TableBook")
public class TableBook {
	@Id @GeneratedValue
	private int id;
	private String name;
	private String phone;
	private String email;
	
	
	private int number;
	private String notes;
	private boolean state;
	
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm")
//	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
	
	
//	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSS")
   
	@Column(name="Date")
	private Date date;
//	private LocalDateTime date;
	
	@ManyToOne
	@JoinColumn(name="BranchId")
	Branch branch;
	
	
	
	

	

	

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	
	/*
	 * public Date getDate() { return date; }
	 * 
	 * public void setDate(Date date) { this.date = date; }
	 */
	/*
	 * public LocalDateTime getDate() { return date; }
	 * 
	 * public void setDate(LocalDateTime date) { this.date = date; }
	 */
	public Branch getBranch() {
		return branch;
	}

	public void setBranch(Branch branch) {
		this.branch = branch;
	}
	
	
	
}
