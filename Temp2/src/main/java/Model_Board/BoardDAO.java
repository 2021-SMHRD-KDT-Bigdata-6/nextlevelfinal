package Model_Board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class BoardDAO {
	
	Connection conn =null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public void get_conn() {
		try {		
			
			// 1. ����̹� �����ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. ����
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
	

	//2. ���� ���
	public int updateArticle(String article_subject, String article_content, String file1, String file2, int article_seq) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "update T_community set ARTICLE_SUBJECT = ?, ARTICLE_CONTENT = ?, file1 = ?, file2= ? where ARTICLE_SEQ = ?";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setString(1, article_subject);
			pst.setString(2, article_content);
			pst.setString(3, file1);
			pst.setString(4, file2);
			pst.setInt(5, article_seq);


			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("�Խ��Ǳ� ������Ʈ ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
		
	public int HitCountBoard(int article_seq, int hitCnt) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "update T_community set cnt= ? where ARTICLE_SEQ = ?";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setInt(1, hitCnt);
			pst.setInt(2, article_seq);


			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("�Խ��Ǳ� ������Ʈ ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
	

	public int writeArticle(String article_subject, String article_content, String file1, String file2, String u_id) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "insert into T_community values(article_seq.nextval, ?, ?, sysdate, ?, ?, ?, ?)";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setString(1, article_subject);
			pst.setString(2, article_content);
			pst.setString(3, file1);
			pst.setString(4, file2);
			pst.setInt(5, 0);
			pst.setString(6, u_id);

			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("�Խ��Ǳ� �ۼ� ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
	
	//4. ��ü ȸ�� ����
	
	public ArrayList<BoardVO> showArticle() {
		ArrayList<BoardVO> al = new ArrayList<BoardVO>();
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select C.ARTICLE_SEQ, C.ARTICLE_SUBJECT, C.ARTICLE_CONTENT, C.REG_DATE, C.FILE1, C.FILE2, C.CNT, C.U_ID, U.U_nickname from T_community C, T_user U where C.u_id = U.u_id order by reg_date desc";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				int num = rs.getInt("ARTICLE_SEQ");
				String title = rs.getString("ARTICLE_SUBJECT");
				String CONTENT = rs.getString("ARTICLE_CONTENT");
				String REG_DATE = rs.getString("REG_DATE");
				String file1 = rs.getString("FILE1");
				String file2 = rs.getString("FILE2");
				int cnt = rs.getInt("CNT");
				String id = rs.getString("U_ID");
				String nick = rs.getString("u_nickname");

				
				BoardVO vo = new BoardVO(num, title, CONTENT, REG_DATE, file1, file2, cnt, id, nick);
				
				al.add(vo);

			}

		} catch (Exception e) {
			System.out.println("�ҷ����� ����!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return al;
		
		
	}
	
	public BoardVO showOneArticle(int seq_num) {
		BoardVO vo = null;
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select C.ARTICLE_SEQ, C.ARTICLE_SUBJECT, C.ARTICLE_CONTENT, C.REG_DATE, C.FILE1, C.FILE2, C.CNT, C.U_ID, U.U_nickname from T_community C, T_user U where C.u_id = U.u_id and c.article_seq=?";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);
			
			pst.setInt(1, seq_num);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				int num = rs.getInt("ARTICLE_SEQ");
				String title = rs.getString("ARTICLE_SUBJECT");
				String CONTENT = rs.getString("ARTICLE_CONTENT");
				String REG_DATE = rs.getString("REG_DATE");
				String file1 = rs.getString("FILE1");
				String file2 = rs.getString("FILE2");
				int cnt = rs.getInt("CNT");
				String id = rs.getString("U_ID");
				String nick = rs.getString("u_nickname");
				
				
				
				vo = new BoardVO(num, title, CONTENT, REG_DATE, file1, file2, cnt, id, nick);
				


			}

		} catch (Exception e) {
			System.out.println("�ҷ����� ����!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return vo;
		
		
	}
	
	
	public BoardVO selectOne(String id) {
		BoardVO vo = null;
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select * from T_user where u_id = ?";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				String get_id = rs.getString("U_ID");
				String name = rs.getString("U_NAME");
				String nick = rs.getString("U_NICKNAME");
				String phone = rs.getString("U_PHONE");
				String email = rs.getString("U_EMAIL");
				int postcd = rs.getInt("U_POSTCD");
				String addr = rs.getString("U_ADDR");
				String addrdtl1 = rs.getString("U_ADDRDTL1");
				String addrdtl2 = rs.getString("U_ADDRDTL2");
				String joinDt = rs.getString("U_JOINDATE");
				int point = rs.getInt("U_point");
				String status = rs.getString("U_status");

				


			}

		} catch (Exception e) {
			System.out.println("�α��ν���!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return vo;
		
		
	}
	
	

	
	public int deleteArticle(int num) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "delete from t_community where article_seq = ?";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setInt(1, num);
			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
		
		
		
	}
		
	
	
}
	
	


