package tw.cactus.videopage.service;

import tw.cactus.login.model.CactusBean;

public interface VideoPageService {

	
	public void saveScoreAndAppraise(Integer score, String appraise, CactusBean c1,Integer courseId, String appraiseDate);
}
