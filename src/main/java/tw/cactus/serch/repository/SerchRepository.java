package tw.cactus.serch.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tw.cactus.course.model.CourseBean;

@Repository
@Transactional

public interface SerchRepository extends JpaRepository<CourseBean, String> {

	List<CourseBean> findByCourseNameLike(String coursename);

}
