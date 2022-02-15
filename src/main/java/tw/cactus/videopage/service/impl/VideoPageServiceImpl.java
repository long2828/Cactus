package tw.cactus.videopage.service.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.videopage.repository.impl.VideoPageRepositoryImpl;

@Service
@Transactional
public class VideoPageServiceImpl {

	@Autowired
	VideoPageRepositoryImpl videoRepository;

	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId) {

		return videoRepository.getAppraiseByCourseIdId(courseId);
	}

	public CourseBean getCourseNameByCourseId(Integer courseId) {

		
		return videoRepository.getCourseNameByCourseId(courseId);
	}
	
	public void saveScoreAndAppraise(Integer score, String appraise, CactusBean c1,Integer courseId, String appraiseDate) {
		videoRepository.saveScoreAndAppraise( score, appraise,appraiseDate,c1,courseId );
	}
	
	

}
