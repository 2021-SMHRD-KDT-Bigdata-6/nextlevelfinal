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
	public int updateComment(int comm_seq, String comm_content) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "update T_comment set COMM_CONTENT = ? where COMM_SEQ = ?";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setString(1, comm_content);
			pst.setInt(2, comm_seq);
	
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("��� ������Ʈ ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
		


	public int writeComment(int article_seq, String comm_content, String u_id) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "insert into T_COMMENT values(t_comment_comm_seq.nextval, ?, ?, sysdate, ?)";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setInt(1, article_seq);
			pst.setString(2, comm_content);
			pst.setString(3, u_id);

			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("��� �ۼ� ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
	
	//4. ��ü ȸ�� ����
	
	public ArrayList<CommentVO> showComment(int article_seq) {
		ArrayList<CommentVO> al = new ArrayList<CommentVO>();
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select * from T_COMMENT where article_seq = ? order by reg_date desc";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);
			
			pst.setInt(1, article_seq);

			// 6. sql ���� ���ó��
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
			System.out.println("�ҷ����� ����!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return al;
		
		
	}

	
	public int deleteComment(int comm_seq) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "delete from t_comment where comm_seq = ?";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setInt(1, comm_seq);
			
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
