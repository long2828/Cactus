package tw.cactus.back.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity (name = "revenue")
@Table(name = "revenue")//小寫
@Component("revenue") //給SPRING看
public class RevenueBean {
	@Id
	@Column(name = "month")
	private String month;
	private Double income;
	
	private RevenueBean() {};
	
	public RevenueBean(String month, Double income) {
		super();
		this.month = month;
		this.income = income;
	}

	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public Double getIncome() {
		return income;
	}
	public void setIncome(Double income) {
		this.income = income;
	}
}
