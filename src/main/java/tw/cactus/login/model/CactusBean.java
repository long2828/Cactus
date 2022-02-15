package tw.cactus.login.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

import tw.cactus.cart.model.CartBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.model.SessionBean;

@Entity(name = "cactus")
@Table(name = "cactus") // 小寫
@Component("cactus") // 給SPRING看
public class CactusBean {
	@Id
	@Column(name = "USER_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	private String username;

	private String email;
	private String photopath;

	public String getPhotopath() {
		return photopath;
	}

	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}

	private String password;
	private String name;
	private String gender;
	private String birth;
	private String cellphone;
	private String expirationDate;
	private String effectiveDate;
	private Integer numberOfSubscription;
	private String intro;
	
	

//	@Column(name = "verification_code", length = 64)
//	private String verificationCode;

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(String effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public Integer getNumberOfSubscription() {
		return numberOfSubscription;
	}

	public void setNumberOfSubscription(Integer numberOfSubscription) {
		this.numberOfSubscription = numberOfSubscription;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Set<CartBean> getCartBean() {
		return cartBean;
	}

	public void setCartBean(Set<CartBean> cartBean) {
		this.cartBean = cartBean;
	}

	private boolean enabled;
	private boolean permission;
//	public String getVerificationCode() {
//		return verificationCode;
//	}
//
//	public void setVerificationCode(String verificationCode) {
//		this.verificationCode = verificationCode;
//	}

	public boolean isPermission() {
		return permission;
	}

	public void setPermission(boolean permission) {
		this.permission = permission;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Column(name = "qualification_of_teacher")
	private Boolean qualificationOfTeacher;

	@JsonIgnore
	@OneToMany(mappedBy = "cactusBean", fetch = FetchType.EAGER)
	private Set<CourseBean> courseBeans;

	@JsonIgnore
	@OneToMany(mappedBy = "cactusBean", fetch = FetchType.EAGER)
	private Set<SessionBean> sessionBeans;
	
	@JsonIgnore
	@OneToMany(mappedBy = "cactusBean", fetch = FetchType.EAGER)
	private Set<CartBean> cartBean;

	public Set<CartBean> getCartBeans() {
		return cartBean;
	}

	public void setCartBeans(Set<CartBean> cartBean) {
		this.cartBean = cartBean;
	}

	public Boolean getQualificationOfTeacher() {
		return qualificationOfTeacher;
	}

	public void setQualificationOfTeacher(Boolean qualificationOfTeacher) {
		this.qualificationOfTeacher = qualificationOfTeacher;
	}

	public CactusBean() {
	}

	public CactusBean(Integer userId, String username, String email, String password, String name, String gender,
			String birth, String cellphone, Boolean qualificationOfTeacher, Set<CourseBean> courseBeans,
			Set<SessionBean> sessionBeans) {
		super();
		this.userId = userId;
		this.username = username;
		this.email = email;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.cellphone = cellphone;
		this.qualificationOfTeacher = qualificationOfTeacher;
		this.courseBeans = courseBeans;
		this.sessionBeans = sessionBeans;
	}

	public CactusBean(String username2, String password2) {
		// TODO Auto-generated constructor stub
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public Set<CourseBean> getCourseBeans() {
		return courseBeans;
	}

	public void setCourseBeans(Set<CourseBean> courseBeans) {
		this.courseBeans = courseBeans;
	}

	public Set<SessionBean> getSessionBeans() {
		return sessionBeans;
	}

	public void setSessionBeans(Set<SessionBean> sessionBeans) {
		this.sessionBeans = sessionBeans;
	}

}
