package tw.cactus.profile.repository.impl;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.login.service.LoginServiceInterface;

import tw.cactus.model.SessionBean;
import tw.cactus.profile.repository.ProfileRepositoryInterface;
@Repository
public class ProfileRepository implements ProfileRepositoryInterface {
	
	@Autowired
	LoginServiceInterface loginServiceInterface;
	@Autowired
	EntityManager entityManager;
	
	@Override
	public void updateInformation(String username, String name, String birth, String cellphone, String email,String intro,String gender) {
		CactusBean resultBean1 = loginServiceInterface.loadByUsername(username);
		
		resultBean1.setEmail(email);
		resultBean1.setCellphone(cellphone);
		resultBean1.setName(name);
		resultBean1.setBirth(birth);
		resultBean1.setIntro(intro);
		resultBean1.setGender(gender);
		entityManager.persist(resultBean1); 
	}
	
	@Override
	public List<SessionBean> loadSessionsByUserName(Integer usesrId){
		String hql = "From member_session Where USER_ID=:usesrId";
		List<SessionBean> getSessionsByUserName = (List<SessionBean>) entityManager.createQuery(hql, SessionBean.class)
				.setParameter("usesrId", usesrId).getResultList();
//		String hql2 = "From CourseBean Where courseId=:courseId";
//		int  sessionBeanSize =getSessionsByUserName.size();
//		List<CourseBean> CourseBean = (List<CourseBean>) new CourseBean();
//		for(int i=0;i<sessionBeanSize;i++) {
//		CourseBean getCoursesBySessions = (CourseBean) entityManager.createQuery(hql, CourseBean.class)
//				.setParameter("courseId", getSessionsByUserName.get(i).getCourseBean().getCourseId()).getResultList();
//		CourseBean.add(getCoursesBySessions);
//		}
		return getSessionsByUserName;
	}
	
		@Override
		public void uploadVideo(String videopath,String imgPath,String description, String courseName, String courseType, Integer price,CactusBean cbean) throws IOException { //上傳功能
        
        System.out.println(videopath);
        try (FileInputStream fis = new FileInputStream("C:\\Video\\"+videopath);
                OutputStream os = new FileOutputStream("C:\\_SpringBoot\\workspace\\Cactus\\src\\main\\resources\\static\\video\\"+videopath);
                ) 
        {
            int len = 0;
            byte[]  b0 = new byte[81920];
            while ((len = fis.read(b0)) != -1) {
                os.write(b0, 0, len);
            }
            System.out.println("OK");
        } 
        
        
        try (FileInputStream fis = new FileInputStream("C:\\Images\\"+imgPath);
                OutputStream os = new FileOutputStream("C:\\_SpringBoot\\workspace\\Cactus\\src\\main\\resources\\static\\images\\"+imgPath);
                ) 
        {
            int len = 0;
            byte[]  b0 = new byte[81920];
            while ((len = fis.read(b0)) != -1) {
                os.write(b0, 0, len);
            }
            System.out.println("OK");
        } 
        
//        
//        FileInputStream fis = new FileInputStream("C:\\Images\\"+imgPath);
//        ByteArrayOutputStream bos = new ByteArrayOutputStream();
//        byte[] data = new byte[81920];
//        byte[] buffer = null;
//        int len;
//        while ((len = fis.read(data)) != -1) {
//            bos.write(data, 0, len);
//            System.out.println(fis.read(data));
//        }
//        buffer = bos.toByteArray();            
//        System.out.println("ASD"+buffer);
        
        
        
        
        CourseBean video = new CourseBean();
        
        DateTimeFormatter currentTime = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        video.setVideoPath(videopath);
        video.setImage(imgPath);
        video.setCourseDescription(description);
        video.setCourseName(courseName);
        video.setLaunched((String)currentTime.format(LocalDateTime.now()));
        video.setCourse_type(courseType);
        video.setPrice(price);
        video.setCactusBean(cbean);
        video.setStateOfCourse(true);
        entityManager.persist(video);
        

        }
		
		@Override
		public void uploadPhoto(String imgPath, CactusBean cbean) throws IOException {
			try (FileInputStream fis = new FileInputStream("C:\\Images\\"+imgPath);
	                OutputStream os = new FileOutputStream("C:\\_SpringBoot\\workspace\\Cactus\\src\\main\\resources\\static\\images\\"+imgPath);
	                ) 
	        {
	            int len = 0;
	            byte[]  b0 = new byte[81920];
	            while ((len = fis.read(b0)) != -1) {
	                os.write(b0, 0, len);
	            }
	            System.out.println("OK");
	        } 
			
			cbean.setPhotopath(imgPath);
			entityManager.merge(cbean);
		}
		
		@Override
		public List<CourseBean> findMyUploadCourses(CactusBean CactusBean){
//			Set<CourseBean> c1= CactusBean.getCourseBeans();
//			List<CourseBean> c2 = new ArrayList<>(c1);
			String hql = "From course Where USER_ID=:usesrId";
			List<CourseBean> myUploadCourses = (List<CourseBean>) entityManager.createQuery(hql, CourseBean.class)
					.setParameter("usesrId", CactusBean.getUserId()).getResultList();
			return myUploadCourses;
		}
	
		public List<CourseBean> findmoney(CactusBean CactusBean){
            String sql = "From course Where USER_ID=:usesrId";
            List<CourseBean> money = (List<CourseBean>) entityManager.createQuery(sql, CourseBean.class)
                    .setParameter("usesrId", CactusBean.getUserId()).getResultList();
            return money;

        }

         public List<Long> catchTotal(List<CourseBean> list) {
               String sql = "select count(*) as COURSEID from member_session where courseId =:courseId ";
               List<Long> alist = new ArrayList<Long>();
               for(int i=0;i<list.size();i++) {
                   alist.add((Long) entityManager.createQuery(sql).setParameter("courseId", list.get(i).getCourseId()).getSingleResult());
               }
               return alist;
        }

         public List<Long> eachSessionTotal(CactusBean CactusBean){
             List<Long> SessionTotal = new ArrayList<Long>();
             for(int i = 0;i<findmoney(CactusBean).size();i++) {
                 SessionTotal.add(findmoney(CactusBean).get(i).getPrice()*catchTotal(findmoney(CactusBean)).get(i));
             }
             return SessionTotal;
         }
		
		
		
		
		@Override
		public List<Integer> incomeIndividual(CactusBean CactusBean) {//收入
			List<CourseBean> allMyUploadCourses = findMyUploadCourses(CactusBean);
			String hql = "From member_session Where courseId=:courseId";			
			int numbersOfMyUploadCourses = allMyUploadCourses.size();
			int totalIncome=0;
			List<SessionBean> quantityOfEachCourseM1 = (List<SessionBean>) new ArrayList<SessionBean>();
			List<SessionBean> quantityOfEachCourseM2 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM3 = (List<SessionBean>) new ArrayList<SessionBean>();
			List<SessionBean> quantityOfEachCourseM4 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM5 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM6 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM7 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM8 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM9 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM10 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM11 = (List<SessionBean>) new ArrayList<SessionBean>(); 
			List<SessionBean> quantityOfEachCourseM12 = (List<SessionBean>) new ArrayList<SessionBean>();  
			
			List<Integer> numberM1 = new ArrayList<Integer>();
			List<Integer> numberM2 = new ArrayList<Integer>();
			List<Integer> numberM3 = new ArrayList<Integer>();
			List<Integer> numberM4 = new ArrayList<Integer>();
			List<Integer> numberM5 = new ArrayList<Integer>();
			List<Integer> numberM6 = new ArrayList<Integer>();
			List<Integer> numberM7 = new ArrayList<Integer>();
			List<Integer> numberM8 = new ArrayList<Integer>();
			List<Integer> numberM9 = new ArrayList<Integer>();
			List<Integer> numberM10 = new ArrayList<Integer>();
			List<Integer> numberM11 = new ArrayList<Integer>();
			List<Integer> numberM12 = new ArrayList<Integer>();
			
			List<Integer> eachMonthIncome = new ArrayList<Integer>();
			
			for(int i=0 ; i<numbersOfMyUploadCourses;i++) {
				List<SessionBean> singleCourseBought = (List<SessionBean>) entityManager.createQuery(hql, SessionBean.class)
				.setParameter("courseId", allMyUploadCourses.get(i).getCourseId()).getResultList();
				for(int k =0;k<singleCourseBought.size();k++) {
					switch((singleCourseBought.get(k).getPurchaseDate().split("-"))[1]) {
					case "01":
						quantityOfEachCourseM1.add(singleCourseBought.get(k));
						break;
					case "02":
						quantityOfEachCourseM2.add(singleCourseBought.get(k));
						break;
					case "03":
						quantityOfEachCourseM3.add(singleCourseBought.get(k));
						break;
					case "04":
						quantityOfEachCourseM4.add(singleCourseBought.get(k));
						break;
					case "05":
						quantityOfEachCourseM5.add(singleCourseBought.get(k));
						break;
					case "06":
						quantityOfEachCourseM6.add(singleCourseBought.get(k));
						break;
					case "07":
						quantityOfEachCourseM7.add(singleCourseBought.get(k));
						break;
					case "08":
						quantityOfEachCourseM8.add(singleCourseBought.get(k));
						break;
					case "09":
						quantityOfEachCourseM9.add(singleCourseBought.get(k));
						break;
					case "10":
						quantityOfEachCourseM10.add(singleCourseBought.get(k));
						break;
					case "11":
						quantityOfEachCourseM11.add(singleCourseBought.get(k));
						break;
					case "12":
						quantityOfEachCourseM12.add(singleCourseBought.get(k));
						break;
					}
				}		
				numberM1.add(quantityOfEachCourseM1.size());
				numberM2.add(quantityOfEachCourseM2.size());
				numberM3.add(quantityOfEachCourseM3.size());
				numberM4.add(quantityOfEachCourseM4.size());
				numberM5.add(quantityOfEachCourseM5.size());
				numberM6.add(quantityOfEachCourseM6.size());
				numberM7.add(quantityOfEachCourseM7.size());
				numberM8.add(quantityOfEachCourseM8.size());
				numberM9.add(quantityOfEachCourseM9.size());
				numberM10.add(quantityOfEachCourseM10.size());
				numberM11.add(quantityOfEachCourseM11.size());
				numberM12.add(quantityOfEachCourseM12.size());
				
				quantityOfEachCourseM1.clear();
				quantityOfEachCourseM2.clear();
				quantityOfEachCourseM3.clear();
				quantityOfEachCourseM4.clear();
				quantityOfEachCourseM5.clear();
				quantityOfEachCourseM6.clear();
				quantityOfEachCourseM7.clear();
				quantityOfEachCourseM8.clear();
				quantityOfEachCourseM9.clear();
				quantityOfEachCourseM10.clear();
				quantityOfEachCourseM11.clear();
				quantityOfEachCourseM12.clear();
//				quantityOfEachCourse.add(singleCourseBought.size());
			}
//			for(int j=0 ; j<numbersOfMyUploadCourses;j++) {
//				totalIncome+=allMyUploadCourses.get(j).getPrice()*quantityOfEachCourse.get(j)*0.5;
//			}
			for(int j=0;j<numbersOfMyUploadCourses;j++) {		
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM1.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM2.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM3.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM4.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM5.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM6.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM7.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM8.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM9.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM10.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM11.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
			for(int j=0;j<numbersOfMyUploadCourses;j++) {
				totalIncome+=allMyUploadCourses.get(j).getPrice()*numberM12.get(j)*0.5;
			}
			eachMonthIncome.add(totalIncome);
			totalIncome=0;
//			for(int a=0;a<=11;a++) {
//			System.out.println(eachMonthIncome.get(a).intValue());
//			}
			return eachMonthIncome;
		}
		
		@Override//付款完改變狀態成為老師、設定生肖失效日期、增加訂閱次數
		public void typeOfTeacher(CactusBean CactusBean) throws Exception {
			CactusBean.setQualificationOfTeacher(true);
			CactusBean.setNumberOfSubscription(CactusBean.getNumberOfSubscription()+1);
			DateTimeFormatter currentTime = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			CactusBean.setEffectiveDate((String)currentTime.format(LocalDateTime.now()));
			CactusBean.setExpirationDate(getLastMonth((String)currentTime.format(LocalDateTime.now()),0,1,0));
			entityManager.merge(CactusBean);
		}
		
		@Override
		public List<SessionBean> findByUserCourse(CactusBean cactusBean) {	
			String hql = "from member_session where USER_ID = :userId";
			List<SessionBean> alist = (List<SessionBean>)entityManager
					.createQuery(hql, SessionBean.class)
					.setParameter("userId",cactusBean.getUserId())
					.getResultList();
			return alist;
		
		}
		
		@Override
		public String getLastMonth(String dateStr,int addYear, int addMonth, int addDate) throws Exception {//指定特定日期
			try {
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			java.util.Date sourceDate = sdf.parse(dateStr);
			Calendar cal = Calendar.getInstance();
			cal.setTime(sourceDate);
			cal.add(Calendar.YEAR,addYear);
			cal.add(Calendar.MONTH, addMonth);
			cal.add(Calendar.DATE, addDate);
			java.text.SimpleDateFormat returnSdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String dateTmp = returnSdf.format(cal.getTime());
			java.util.Date returnDate = returnSdf.parse(dateTmp);
			return dateTmp;
			} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e.getMessage());
			}		
		}
		
		@Override
		public void setTeacherStateTofalse(CactusBean cactusBean) {//更改教師狀態為false
			cactusBean.setQualificationOfTeacher(false);
			entityManager.merge(cactusBean);
		}
		
		@Override
		public void setAllCoursesToFalse(CactusBean cactusBean) {
			List<CourseBean> allCourse = findMyUploadCourses(cactusBean);
			for(int i = 0;i < allCourse.size(); i++) {
				allCourse.get(i).setStateOfCourse(false);
				entityManager.merge(allCourse.get(i));
			}
		}
		
		@Override
		public CourseBean findMyCourses(Integer courseId) { 
		        CourseBean courseBean ;
		        courseBean = entityManager.find(CourseBean.class, courseId);
		        return courseBean;
		   }
		
		@Override//修改影片內容
		public void updateVideo(Integer courseId, String courseName,String description, String course_type, Integer price, String image, String videoPath) {

		         CourseBean courseBean = findMyCourses(courseId);
		         DateTimeFormatter currentTime = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		         courseBean.setLaunched((String)currentTime.format(LocalDateTime.now()));
		         courseBean.setCourseName(courseName);
		         courseBean.setCourse_type(course_type);
		         courseBean.setCourseDescription(description);
		         courseBean.setPrice(price);
		         courseBean.setImage(image);
		         courseBean.setVideoPath(videoPath);

		        entityManager.persist(courseBean);

		    }
		

		@Override
		public void setAllCoursesToTrue(CactusBean cactusBean) {
			List<CourseBean> allCourse = findMyUploadCourses(cactusBean);
			for(int i = 0;i < allCourse.size(); i++) {
				allCourse.get(i).setStateOfCourse(true);
				entityManager.merge(allCourse.get(i));
			}
		}
		
}
