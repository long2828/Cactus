package tw.cactus.course.model;

import java.io.Serializable;
import java.security.Timestamp;
import java.util.Set;

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

import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

@Entity(name = "course")
@Table(name = "course") // 小寫
@Component("course") // 給SPRING看

public class CourseBean implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer courseId;

	@JsonIgnore
	@OneToMany(mappedBy = "courseBean", fetch = FetchType.LAZY)
	private Set<SessionBean> sessionBeans;

	private String course_type;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private CactusBean cactusBean;

	@Column(name = "COURSE_NAME")
	private String courseName;

	@Column(name = "COURSE_DESCRIPTION")
	private String courseDescription;
	private Integer price;
	private String launched;
	private String total;
	private String point;
	private String requiry;
	private String coursedetail;
	private String videotime;
	
	private boolean stateOfCourse;

	public boolean isStateOfCourse() {
		return stateOfCourse;
	}

	public void setStateOfCourse(boolean stateOfCourse) {
		this.stateOfCourse = stateOfCourse;
	}

	public String getVideotime() {
		return videotime;
	}

	public void setVideotime(String videotime) {
		this.videotime = videotime;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getRequiry() {
		return requiry;
	}

	public void setRequiry(String requiry) {
		this.requiry = requiry;
	}

	public String getCoursedetail() {
		return coursedetail;
	}

	public void setCoursedetail(String coursedetail) {
		this.coursedetail = coursedetail;
	}

	private String videoPath;

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	private String image;

	public CourseBean() {
	};

	public CourseBean(Integer courseId, Set<SessionBean> sessionBeans, String course_type, CactusBean cactusBean,
			String courseName, String courseDescription, Integer price, String launched) {
		super();
		this.courseId = courseId;
		this.sessionBeans = sessionBeans;
		this.course_type = course_type;
		this.cactusBean = cactusBean;

		this.courseName = courseName;
		this.courseDescription = courseDescription;
		this.price = price;
		this.launched = launched;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Set<SessionBean> getSessionBeans() {
		return sessionBeans;
	}

	public void setSessionBeans(Set<SessionBean> sessionBeans) {
		this.sessionBeans = sessionBeans;
	}

	public String getCourse_type() {
		return course_type;
	}

	public void setCourse_type(String course_type) {
		this.course_type = course_type;
	}

	public CactusBean getCactusBean() {
		return cactusBean;
	}

	public void setCactusBean(CactusBean cactusBean) {
		this.cactusBean = cactusBean;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseDescription() {
		return courseDescription;
	}

	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getLaunched() {
		return launched;
	}

	public void setLaunched(String launched) {
		this.launched = launched;
	}

}
