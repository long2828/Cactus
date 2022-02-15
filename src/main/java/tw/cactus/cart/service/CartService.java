package tw.cactus.cart.service;

import java.util.List;

import tw.cactus.cart.model.CartBean;
import tw.cactus.login.model.CactusBean;

public interface CartService {
	public List<CartBean> findAllCart();
	public void remove(Integer cartId);
	public List<CartBean> findYourSelfCart(CactusBean cactusBean);
//	public void saveByCourseId(Integer courseId,Integer userId);
	public void addSessions(CactusBean c,Integer courseId);
//	public void adddel(Integer userid, List<CartBean> c);
	public boolean notRepeatingInTheCar(Integer courseId,CactusBean cactusBean);
	void adddel(CactusBean cactusBean);
}
