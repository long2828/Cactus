package tw.cactus.back.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;
import tw.cactus.model.SessionBean;


@Entity (name = "cmember")
@Table(name = "cmember")//小寫
@Component("cmember") //給SPRING看

public class CMemberBean {

	@Id
	@Column(name = "MEMBER_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer memberId;
	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}
	private String memberName;	
	private String password;
	private String name;
	public CMemberBean() {} ;
	
	public CMemberBean(Integer memberId, String memberName, String password, String name) {
		super();
		this.memberName = memberName;
		this.password = password;
		this.name = name;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	



}