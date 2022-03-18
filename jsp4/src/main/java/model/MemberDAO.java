package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//데이터를 연결하고 select, insert, update, delete작업을 실행해주는 클래
public class MemberDAO {

	String dbId = "root";
	String dbPass = "darismas8+";
	String dbUrl = "jdbc:mysql://localhost/study_db?serverTimezone=UTC";
	
	String sql = "";

	Connection conn; //데이터베이스에 접근할 수 있도록 설정
	PreparedStatement pstmt; //데이터 베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs; //데이터베이스의 테이블의 결과
	
	//데이터베이스에 접근할 수 있도록 도와주는 메소드
	public void getCon() {
	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(dbUrl, dbId, dbPass);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void insertMember(MemberBean mbean) {
		
		try {
			
			getCon();
			
			sql = "insert into member values(?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			
			pstmt.executeUpdate(); //insert update delete시 사용
			
			conn.close(); //자원반납
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	
	public Vector<MemberBean> allSelectMember() {
		
		Vector<MemberBean> v = new Vector<MemberBean>();
		
		try {
			
			getCon();
			
			sql = "select * from member";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberBean bean = new MemberBean(); //컬럼으로 나뉘어진 데이터를 빈 클래스에 저장
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
				v.add(bean); //0번째부터 순서대로 데이터가 저장
				
			}
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
		
	}
	
	public MemberBean oneSelectMember(String id) {
		
		MemberBean bean = new MemberBean();
				
		try {
			
			getCon();
			
			sql = "select * from member where id = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}
			
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
		
	}
	
	public String getPass(String id) {
		String pass = "";
		
		try {
			getCon();
			
			sql = "select pass1 from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pass = rs.getString(1);
			}
		
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	
}
