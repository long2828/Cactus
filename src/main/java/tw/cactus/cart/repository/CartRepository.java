package tw.cactus.cart.repository;

import java.util.List;

import org.hibernate.query.Query;

import tw.cactus.cart.model.CartBean;
import tw.cactus.login.model.CactusBean;

public interface CartRepository {

	public List<CartBean> findAllCart();
	public void remove(Integer cartId);
	public CartBean findTheSameCourseId(Integer courseId,CactusBean cactusBean);
	public void addSessions(CactusBean c,Integer courseId);
	public List<CartBean> findYourSelfCart(CactusBean cactusBean);
//	public void adddel(Integer userid, List<CartBean> c);
	//public Query<CartBean> findTheSameCourseId(Integer courseId);
	void adddel(CactusBean cactusBean);
}
