package test2;

public class product {
	private String pcode;
	private String company;
	
	public product(){}
	
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPcode() {
		return pcode;
	}
	public String getCompany() {
		return company;
	}
	public product(String pcode, String company) {
		super();
		this.pcode = pcode;
		this.company = company;
	}

}
