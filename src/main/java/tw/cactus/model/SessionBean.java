package tw.cactus.model;

import java.io.Serializable;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;


@Entity(name = "member_session")
@Table(name = "member_session")//小寫
@Component("member_session")//給SPRING看
public class SessionBean implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderId;
	
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private CactusBean cactusBean;
	

	@ManyToOne
	@JoinColumn(name="COURSEID")
	private CourseBean courseBean ;
	
	@Column(name = "purchased_Date")
	private String purchaseDate ;
	
	@Column(name = "score")
	private Integer score;
	private String appraise;
	private String appraiseDate;
	public String getAppraiseDate() {
		return appraiseDate;
	}

	public void setAppraiseDate(String appraiseDate) {
		this.appraiseDate = appraiseDate;
	}

	public String getAppraise() {
		return appraise;
	}

	public void setAppraise(String appraise) {
		this.appraise = appraise;
	}

	public SessionBean() {}

	public SessionBean(Integer orderId, CactusBean cactusBean, CourseBean courseBean, String purchaseDate) {
		super();
		this.orderId = orderId;
		this.cactusBean = cactusBean;
		this.courseBean = courseBean;
		this.purchaseDate = purchaseDate;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public CactusBean getCactusBean() {
		return cactusBean;
	}

	public void setCactusBean(CactusBean cactusBean) {
		this.cactusBean = cactusBean;
	}

	public CourseBean getCourseBean() {
		return courseBean;
	}

	public void setCourseBean(CourseBean courseBean) {
		this.courseBean = courseBean;
	}

	public String getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

	public Integer getScore() {
		return score;
	}
	
	public void setScore(Integer score) {
		this.score = score;
	}
	

}
    
