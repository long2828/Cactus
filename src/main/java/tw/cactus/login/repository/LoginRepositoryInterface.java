package tw.cactus.login.repository;

import tw.cactus.login.model.CactusBean;

public interface LoginRepositoryInterface {
	CactusBean loadByUsername(String userName);
	CactusBean findByUserName(String userName);
}
