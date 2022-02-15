package tw.cactus.course.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.cactus.course.model.CourseBean;
import tw.cactus.course.repository.CourseRepository;
import tw.cactus.course.service.CourseService;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.model.SessionBeanDao;

@Service
@Transactional
public class CourseServicImpl implements CourseService {

	@Autowired
	CourseRepository courseRepository;
	@Autowired
    SessionBeanDao sessionRepo;
	
	@Override
	public List<CourseBean> findCourseTypeOfMusic() {
		return courseRepository.findCourseTypeOfMusic();
	}

	@Override
	public List<CourseBean> findCourseTypeOfCoding() {
		return courseRepository.findCourseTypeOfCoding();
	}

	@Override
	public List<CourseBean> findCourseTypeOfSport() {
		return courseRepository.findCourseTypeOfSport();
	}

	@Override
	public List<CourseBean> findCourseTypeOfLan() {
		return courseRepository.findCourseTypeOfLan();
	}

	@Override
	public List<CourseBean> findCourseTypeOfEconomy() {
		return courseRepository.findCourseTypeOfEconomy();
	}

	@Override
	public List<CourseBean> findCourseTypeOfFree() {
		return courseRepository.findCourseTypeOfFree();
	}

	@Override
	public void upload(String videopath, String imgPath, String description, String courseName, String courseType,
			Integer price, String launched, CactusBean cbean) throws IOException {
		courseRepository.upload(videopath, imgPath, description, courseName, courseType, price, launched, cbean);
	}

	@Override
	public CourseBean findcourse(Integer courseId) {
		return courseRepository.findcourse(courseId);
	}

	@Override
	public long findappraise(String appraise, Integer courseId) {
		return courseRepository.findappraise(appraise, courseId);
	}

	@Override
	public double findscore(Integer score, Integer courseId) {
		return courseRepository.findscore(score, courseId);
	}

	@Override
	public long findvideo(Integer USER_ID, Integer courseId) {
		return courseRepository.findvideo(USER_ID, courseId);
	}

	@Override
	public long findstudent(Integer orderId, Integer courseId) {
		return courseRepository.findstudent(orderId, courseId);
	}

	@Override
	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId) {
		return courseRepository.getAppraiseByCourseIdId(courseId);
	}

	@Override
	public List<Long> catchTotalPurched(List<CourseBean> musiclist) {
		return courseRepository.catchTotalPurched(musiclist);
	}

	@Override
	public SessionBean findTopCourse() {
		return courseRepository.findTopCourse();
	}

	public List<SessionBean> findTopCourse1() {
		return courseRepository.findTopCourse1();
	}

	// 首頁登入抓前三名購買次數最多的課程
//    @Override
//    public List<CourseBean> findTopThree() {
//        List<SessionBean> allSessionBean = sessionRepo.findAllSession();
//        Map<Integer, Integer> map = new HashMap<Integer, Integer>();
//        for (int i = 0; i < allSessionBean.size(); i++) {
//            if (!(map.containsKey(allSessionBean.get(i).getCourseBean().getCourseId()))) {
//                map.put(allSessionBean.get(i).getCourseBean().getCourseId(), 1);
//            } else {
//                Integer count = map.get(allSessionBean.get(i).getCourseBean().getCourseId());
//                count++;
//                map.put(allSessionBean.get(i).getCourseBean().getCourseId(), count);
//            }
//        }
//		List<Map.Entry<Integer, Integer>> list = new ArrayList<Map.Entry<Integer, Integer>>(map.entrySet());
//		List<CourseBean> courseBeanList = new ArrayList<CourseBean>();
//
//		Collections.sort(list, new Comparator<Map.Entry<Integer, Integer>>() {
//			public int compare(Map.Entry<Integer, Integer> m1, Map.Entry<Integer, Integer> m2) {
//				return m1.getValue().compareTo(m2.getValue());
//			}
//		});
//System.out.println(list);
//		for (int i = list.size() - 1; list.size() - 4 >= 0 && i > list.size() - 4 && i > 0; i--) {
//			CourseBean cb = courseRepository.findCourseByPk(list.get(i).getKey());
//			courseBeanList.add(cb);
//			int j = i;
//
//			if (map.get(list.get(j).getValue()) == map.get(list.get(j - 1).getValue())) {
//				for (j = j - 1; list.get(j).getValue() == map.get(list.get(j - 1).getValue()); j--) {
//					if (j == 1) {
//						CourseBean cbj = courseRepository.findCourseByPk(map.get(list.get(0).getKey()));
//						courseBeanList.add(cbj);
//						break;
//					}
//					CourseBean cbj = courseRepository.findCourseByPk(map.get(list.get(j).getKey()));
//					courseBeanList.add(cbj);
//				}
//				if (j < list.size() - 4) {
//					System.out.println("fot loop");
//					return courseBeanList;
//				}
//			}
//		}
//		for(int i = 0; i < courseBeanList.size(); i++) {
//			System.out.println(courseBeanList.get(i).getCourseId());
//			}
//		return courseBeanList;
//	}

}
