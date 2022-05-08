package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	String sql;
	
	//데이터 베이스의 커넥션 풀을 사용하도록 설정하는 메소드 
	public void getCon() {
		try {
			Context initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//하나의 새로운 게시글이 넘어와서 저장되는메소드
	public void insertBoard(BoardBean bean) {
		
		getCon();
		
		//빈 클래스에 넘어오지 않았던 데이터들을 초기화 해주어야 한다. 
		int ref = 0 ; // 글 그룹 = 쿼리를 실행시켜서 가장 큰 ref값을 가져온 후 +1을 더해주면 됨
		int re_step = 1; //새글 = 부모
		int re_level = 1;
		
		try {
			//가장 큰 ref값을 읽어 오는 쿼리 준비 
			String refsql = "select max(ref) from board";
			//쿼리 실행 객체 
			pstmt = conn.prepareStatement(refsql);
			//쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ref = rs.getInt(1)+1;//최대값에 +1 해서 글 그룹을 설정
			}

			//실제로 게시글 전체 값을 테이블에 저장 
			sql = "insert into board values(null,?,?,?,?,now(),?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bean.getContent());
			
			pstmt.executeUpdate();
			
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	//모든 게시글을 리턴해주는 메소드 작성 
	public Vector<BoardBean> getBoardAll(){
		
		Vector<BoardBean> v  = new Vector<>();
		
		getCon();
		
		try {
			//쿼리준비
			sql = "select * from board order by ref desc,re_step asc";
			//쿼리 실행 객체 만들기
			pstmt = conn.prepareStatement(sql);
			//쿼리 실행 후 결과 저장
			rs = pstmt.executeQuery();
			//데이터 개수가 몇개인지 모르기에 반복문을 이용하여 데이터를 추출
			while(rs.next()) {
				//데이터를 boardbean class 를 이용하여 패키징
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));
				//벡터에 저장	
				v.add(bean);
				
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
		
	}
	
	
	//하나의 게시글을 리턴하는 메소드 작성 
	public BoardBean getOneBoard(int num) {
		
		//리턴타입 선언
		BoardBean  bean = new BoardBean();
		getCon();
		
		try {
			
			//조회수 증가 쿼리 
			sql = "update board set readcount = readcount + 1 where num = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			
			//쿼리 준비
			sql = "select  * from board where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			//쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setReg_date(rs.getDate(6).toString());
				bean.setRef(rs.getInt(7));
				bean.setRe_step(rs.getInt(8));
				bean.setRe_level(rs.getInt(9));
				bean.setReadcount(rs.getInt(10));
				bean.setContent(rs.getString(11));

			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	//답변글이 저장되는 메소드
	public void reWriteBoard(BoardBean bean) {
		
		//부모re_step 에 1 증가, re_level 은 모든답글 레벨 증가시켜야함
		
		//부모 글 그룹과 글 레벨 글 스텝을 읽어들임
		int ref = bean.getRef();
		int re_step = bean.getRe_step();
		int re_level = bean.getRe_level();
		
		getCon();
		
		try {
			String levelsql = "update board set re_level = re_level+1 where ref = ? and re_level > ?";
			//쿼리 실행객체 선언
			pstmt = conn.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			//쿼리 실행
			pstmt.executeUpdate();
		
			//답변글 데이터를 저장
			sql = "insert into board values(null,?,?,?,?,now(),?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref); //부모의 ref값을 넣어줌
			pstmt.setInt(6, re_step+1); //답글이기에 부모 글 re_step 에 1을 더해줌
			pstmt.setInt(7, re_level+1); 
			pstmt.setString(8, bean.getContent());
			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
