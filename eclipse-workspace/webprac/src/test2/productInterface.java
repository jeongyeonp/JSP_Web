package test2;
import java.util.*;

public class productInterface {
	HashMap<String,product> datas = new HashMap<>();
	public productInterface() {
		product p1= new product("A100","삼성전자");
		product p2= new product("B100","엘지전자");
		product p3= new product("C100","엘지전자");
		datas.put("A100",p1);
		datas.put("B100",p2);
		datas.put("C100",p3);
	}
	public String searchProduct(String pcode) {
		if(datas.get(pcode)==null) {
			System.out.println("등록된회사는 없습니다.");
			return null;
		}
		return datas.get(pcode).getCompany();
	}

}
