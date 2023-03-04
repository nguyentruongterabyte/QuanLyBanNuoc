package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="BOPHAN")
public class DepartmentEntity {
	@Id
	@Column(name="MaBP")
	private String id;
	
	@Column(name="TenBP")
	private String name;
	
	@Column(name="TienLuong")
	private String salary;
	
	@OneToMany(mappedBy = "department", fetch = FetchType.EAGER)
	private Collection<StaffEntity> staffs;
	
	
}
