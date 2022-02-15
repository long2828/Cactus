package tw.cactus.cart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;

@Entity (name = "cart")
@Table(name = "cart")//小寫
@Component("cart") //給SPRING看
public class CartBean {

	@Id
	@Column(name = "CartId")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer cartId;
	
		
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private CactusBean cactusBean;
	
	@ManyToOne
	@JoinColumn(name="COURSEID")
	private CourseBean courseBean ;
	
	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
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

	

	
	

}
