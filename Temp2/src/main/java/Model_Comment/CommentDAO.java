package Model_Comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model_Board.BoardVO;

public class CommentDAO {
	
	Connection conn =null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public void get_conn() {
		try {		
			
			// 1. 드라이버 동적로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 연결
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "nextlevel2";
			String dbpw = "nextlevel123";

			conn = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void close() {
		
		try {
			if(rs!=null) {
				rs.close();
			}
			if(pst!=null) {
				pst.close();
			}
			if(conn!=null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	//2. 수정 기능
	public int updateComment(int comm_seq, String comm_content) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. 실행한 sql 정의
			String sql = "update T_comment set COMM_CONTENT = ? where COMM_SEQ = ?";
			
			//4. 실행 객체 생성(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql 정의가 제대로 되어있지 않을 때
			
			//5. 바인드 변수(?) 채우기
			pst.setString(1, comm_content);
			pst.setInt(2, comm_seq);
	
			//6. sql 실행
			//executeUpdate(): update, insert, delete(테이블 상에 변화 o) -> int
			//executeQuery(): select(테이블 상에 변화x) -> ResultSet(데이터)
			cnt = pst.executeUpdate();
			
		}catch(Exception e) { //try 에서 예외 상황이 발생한 경우
			System.out.println("댓글 업데이트 실패!");
			e.printStackTrace(); //예외상황이 발생순서대로 출력
		}finally { //try에서 예외상황이 발생하던지/하지않던지 간에 무조건 마지막에 실행
			close();
		}
		
		return cnt;
		
	}
		


	public int writeComment(int article_seq, String comm_content, String u_id) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. 실행한 sql 정의
			String sql = "insert into T_COMMENT values(t_comment_comm_seq.nextval, ?, ?, sysdate, ?)";
			
			//4. 실행 객체 생성(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql 정의가 제대로 되어있지 않을 때
			
			//5. 바인드 변수(?) 채우기
			pst.setInt(1, article_seq);
			pst.setString(2, comm_content);
			pst.setString(3, u_id);

			
			//6. sql 실행
			//executeUpdate(): update, insert, delete(테이블 상에 변화 o) -> int
			//executeQuery(): select(테이블 상에 변화x) -> ResultSet(데이터)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try 에서 예외 상황이 발생한 경우
			System.out.println("댓글 작성 실패!");
			e.printStackTrace(); //예외상황이 발생순서대로 출력
		}finally { //try에서 예외상황이 발생하던지/하지않던지 간에 무조건 마지막에 실행
			close();
		}
		
		return cnt;
		
	}
	
	//4. 전체 회원 정보
	
	public ArrayList<CommentVO> showComment(int article_seq) {
		ArrayList<CommentVO> al = new ArrayList<CommentVO>();
		
		try {
			get_conn();
			// 3. 실행할 sql 정의
			String sql = "select * from T_COMMENT where article_seq = ? order by reg_date desc";

			// 4. PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);
			
			pst.setInt(1, article_seq);

			// 6. sql 실행 결과처리
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				int comm_seq = rs.getInt("comm_seq");
				String comm_content = rs.getString("comm_content");
				String reg_date = rs.getString("reg_date");
				String u_id = rs.getString("u_id");
				
				CommentVO vo = new CommentVO(comm_seq, article_seq, comm_content, reg_date, u_id);
				al.add(vo);
			}

		} catch (Exception e) {
			System.out.println("불러오기 실패!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return al;
		
		
	}
	
	
	
	public CommentVO selectOneComment(int comm_seq) {
		CommentVO vo = null;
		try {
			get_conn();
			// 3. 실행할 sql 정의
			String sql = "select * from T_COMMENT where comm_seq = ?";

			// 4. PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);
			
			pst.setInt(1, comm_seq);

			// 6. sql 실행 결과처리
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				int article_seq = rs.getInt("article_seq");
				String comm_content = rs.getString("comm_content");
				String reg_date = rs.getString("reg_date");
				String u_id = rs.getString("u_id");
				
				vo = new CommentVO(comm_seq, article_seq, comm_content, reg_date, u_id);
				
			}

		} catch (Exception e) {
			System.out.println("불러오기 실패!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return vo;
		
		
	}
	
	

	
	public int deleteComment(int comm_seq) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. 실행한 sql 정의
			String sql = "delete from t_comment where comm_seq = ?";
			
			//4. 실행 객체 생성(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql 정의가 제대로 되어있지 않을 때
			
			//5. 바인드 변수(?) 채우기
			pst.setInt(1, comm_seq);
			
			//6. sql 실행
			//executeUpdate(): update, insert, delete(테이블 상에 변화 o) -> int
			//executeQuery(): select(테이블 상에 변화x) -> ResultSet(데이터)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try 에서 예외 상황이 발생한 경우
			e.printStackTrace(); //예외상황이 발생순서대로 출력
		}finally { //try에서 예외상황이 발생하던지/하지않던지 간에 무조건 마지막에 실행
			close();
		}
		
		return cnt;
		
		
		
		
	}
	
	
	
	public int deleteAllComment(int article_seq) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. 실행한 sql 정의
			String sql = "delete from t_comment where article_seq = ?";
			
			//4. 실행 객체 생성(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql 정의가 제대로 되어있지 않을 때
			
			//5. 바인드 변수(?) 채우기
			pst.setInt(1, article_seq);
			
			//6. sql 실행
			//executeUpdate(): update, insert, delete(테이블 상에 변화 o) -> int
			//executeQuery(): select(테이블 상에 변화x) -> ResultSet(데이터)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try 에서 예외 상황이 발생한 경우
			e.printStackTrace(); //예외상황이 발생순서대로 출력
		}finally { //try에서 예외상황이 발생하던지/하지않던지 간에 무조건 마지막에 실행
			close();
		}
		
		return cnt;
		
		
		
		
	}
		
}
