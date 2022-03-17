package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//데이터를 연결하고 select, insert, update, delete작업을 실행해주는 클래
public class MemberDAO {

	String id = "root";
	String pass = "darismas8+";
	String url = "jdbc:mysql://localhost/study_db?serverTimezone=UTC";
	
	String sql = "";

	Connection conn; //데이터베이스에 접근할 수 있도록 설정
	PreparedStatement pstmt; //데이터 베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs; //데이터베이스의 테이블의 결과
	
	//데이터베이스에 접근할 수 있도록 도와주는 메소드
	public void getCon() {
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, id, pass);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//데이터베이스에 한 사람의 회원 정보를 저장해주는 메소드
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
		
		//데이터베이스는 무조건 try catch
		try {
			
			//커넥션 연결
			getCon();
			
			//쿼리준비
			sql = "select * from member";
			
			//쿼리를 실행시켜주는 객체 선언
			pstmt = conn.prepareStatement(sql);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return v;
		
	}
	
	
	
	
	
}
