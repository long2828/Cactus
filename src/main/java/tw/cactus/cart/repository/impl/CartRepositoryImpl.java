package tw.cactus.cart.repository.impl;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.query.Query;
import tw.cactus.cart.model.CartBean;
import tw.cactus.cart.repository.CartRepository;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;


@Repository

public class CartRepositoryImpl implements CartRepository {
	
	@Autowired
	CartBean cartBean;
	@Autowired
	CactusBean cactusBean;
	@Autowired
	SessionBean sessionBean;
	@Autowired
	EntityManager entityManager;

	@Override
	public List<CartBean> findAllCart() {

		String hql = "FROM cart";
		
		return entityManager.createQuery(hql, CartBean.class).getResultList();
	}
	
	@Override
	public List<CartBean> findYourSelfCart(CactusBean cactusBean) {
		String hql = "FROM cart WHERE user_Id=:userId";
		List<CartBean> cartBean = entityManager.createQuery(hql).setParameter("userId", cactusBean.getUserId()).getResultList();
		return cartBean;
	}

	
	@Override
	public void remove(Integer cartId) {

		cartBean.setCartId(cartId);
		entityManager.remove(entityManager.contains(cartBean) ? cartBean : entityManager.merge(cartBean));
	}
	
	
	
	

//	public void saveByCourseId(Integer courseId ,Integer userId) {
//		System.out.println(courseBean.getCourseId());
//		cartBean.getCourseBean().setCourseId(courseId);
//		cartBean.getCactusBean().setUserId(2);
//		System.out.println(cactusBean.getUserId());
//		entityManager.persist(cartBean);
//	
//	}
	@Override
	public void addSessions(CactusBean c, Integer courseId) {
		// String hql = "from course where courseName = :courseName";
//        Query<CourseBean> query = (Query<CourseBean>)entityManager.createQuery(hql, CourseBean.class)
//                .setParameter("courseName", courseName);
//        CourseBean result = query.uniqueResult();
		CourseBean cdBean = entityManager.find(CourseBean.class, courseId);
		CartBean sBean = new CartBean();

		sBean.setCactusBean(c);
		sBean.setCourseBean(cdBean);
		entityManager.persist(sBean);

	}

	
	@Override
	public CartBean findTheSameCourseId(Integer courseId,CactusBean cactusBean) {
		String hql = "FROM cart WHERE courseId=:courseId and user_Id=:userId";		
		Query<CartBean> findTheSameCourseId = (Query<CartBean>)entityManager.createQuery(hql, CartBean.class).setParameter("courseId",courseId).setParameter("userId",cactusBean.getUserId());
		CartBean cartBean = findTheSameCourseId.uniqueResult();
		
		return cartBean ;
	}
	@Override
	 public void adddel(CactusBean cactusBean) {

//       System.out.println(cactusBean.getCartBeans()!=null ?cactusBean.getCartBeans().isEmpty(): "isnull");

		cactusBean.setUserId(cactusBean.getUserId());

       Set<CartBean> aa = cactusBean.getCartBeans();

       for (CartBean cart : aa) {
           DateTimeFormatter currentTime = DateTimeFormatter.ofPattern("yyyy-MM-dd");

           sessionBean.setCactusBean(cactusBean);
           sessionBean.setCourseBean(cart.getCourseBean());
           sessionBean.setPurchaseDate((String)currentTime.format(LocalDateTime.now()));

           entityManager.merge(sessionBean);


           entityManager.remove(entityManager.contains(cart) ? cart : entityManager.merge(cart));
       }

   }
	
//	@Override
//	public List<CartBean> cartPaypal(CactusBean cactusbean){
//		
//	}


//	public CartBean total(Integer pirce) {
//		Integer totalPrice = 0;
//		totalPrice += pirce;		
//		return cartBean;				
//	}
}
