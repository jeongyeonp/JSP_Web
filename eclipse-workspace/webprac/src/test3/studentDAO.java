package test3;

import java.sql.*;
import java.util.ArrayList;

public class studentDAO {
		String driver = "oracle.jdbc.OracleDriver";
		String jdbcurl = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		
		Connection conn;
		PreparedStatement pstmt;
		

		public void connect() {
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(jdbcurl,"system","1234");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		public void disconnect() {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public void addstudent(student s){
			connect();
			String sql = "insert into tstudent values(?,?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, s.getIsbn());
				pstmt.setString(2,s.getSname());
				pstmt.setString(3, s.getDept());
				pstmt.setString(4, s.getPhone());
				pstmt.setString(5, s.getEmail());
				
				pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			disconnect();
		}
		
		public ArrayList<student> findAll(){
			connect();
			
			ArrayList<student> data = new ArrayList<student>();
			
			String sql = "select * from tstudent";
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					student s = new student();
					s.setIsbn(rs.getInt("isbn"));
					s.setSname(rs.getString("sname"));
					s.setDept(rs.getString("dept"));
					s.setPhone(rs.getString("phone"));
					s.setEmail(rs.getString("email"));
					
					data.add(s);
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
			disconnect();
			
			return data;
		}
}
