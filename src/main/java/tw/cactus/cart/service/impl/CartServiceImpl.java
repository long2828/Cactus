package tw.cactus.cart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.query.Query;
import tw.cactus.cart.model.CartBean;
import tw.cactus.cart.repository.CartRepository;
import tw.cactus.cart.repository.impl.CartRepositoryImpl;
import tw.cactus.cart.service.CartService;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	CartRepositoryImpl cartRepositoryImpl;
	@Autowired
	CartBean cartBean;
	
	@Override
	public List<CartBean> findAllCart() {

		return cartRepositoryImpl.findAllCart();
	}
	
	@Override
	public List<CartBean> findYourSelfCart(CactusBean cactusBean) {
		
		return cartRepositoryImpl.findYourSelfCart(cactusBean);
	}
	
	@Override
	public void remove(Integer cartId) {

		cartRepositoryImpl.remove(cartId);
	}
	
	@Override
	public void addSessions(CactusBean c,Integer courseId) {
		cartRepositoryImpl.addSessions(c,courseId);

	    }
	
	@Override
	public void adddel(CactusBean cactusBean) {
		cartRepositoryImpl.adddel(cactusBean);
	}

//	public void saveByCourseId(Integer courseId,Integer userId) {
//		
//		cartRepositoryImpl.saveByCourseId(courseId,userId);	
//	}
	
	@Override
	public boolean notRepeatingInTheCar(Integer courseId,CactusBean cactusBean) {
		cartBean = cartRepositoryImpl.findTheSameCourseId(courseId,cactusBean);
		
		if (cartBean == null){
			
			return true;
			
		} else {
			
			return false;
		}
	}
	
//	public void adddel(Integer userid, List<CartBean> c) {
//		cartRepositoryImpl.adddel(userid,c);
//	}
}
