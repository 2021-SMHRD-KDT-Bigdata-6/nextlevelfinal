package Model_Class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import Model_User.UserVO;

public class ClassDAO {
	

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
	
	//1. �α��� ���(�޼���)
	public UserVO login(String id, String pw) {
		UserVO vo = null;
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select * from t_user where u_id = ? and u_pwd = ?";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);

			// 5. ���ε� ����(?) ä���
			pst.setString(1, id);
			pst.setString(2, pw);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();

			if (rs.next()) {
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

				vo = new UserVO(get_id, name, nick, phone, email, postcd, addr, addrdtl1, addrdtl2, joinDt, point, status);
				


			} else {
				System.out.println("�α��ν���!");
			}

		} catch (Exception e) {
			System.out.println("�α��ν���!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return vo;
		
	}
	//2. ���� ���
	public int update(String id, String name, String nick, String phone, String email, int postcd, String addr, String addrdtl1, String addrdtl2) {

		int cnt = 0;
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "update T_USER set u_name = ?, u_nickname = ?, u_phone = ?, u_postcd = ?, u_addr = ?, u_addrdtl1 = ?, u_addrdtl2 = ? where u_id = ?";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);

			// 5. ���ε� ����(?) ä���
			pst.setString(1, name);
			pst.setString(2, nick);
			pst.setString(3, phone);
			pst.setInt(4, postcd);
			pst.setString(5, addr);
			pst.setString(6, addrdtl1);
			pst.setString(7, addrdtl2);
			pst.setString(8, id);

			// 6. sql ���� ���ó��
			cnt = pst.executeUpdate();



		} catch (Exception e) {
			System.out.println("������Ʈ ����!");
			e.printStackTrace();

		} finally {

			close();

		}
		
		return cnt;
	}
		
		public void statusUpdate(String id, String status) {


			
			try {
				get_conn();
				// 3. ������ sql ����
				String sql = "update T_USER set u_status = ? where u_id = ?";

				// 4. PreparedStatement ��ü ����
				pst = conn.prepareStatement(sql);

				// 5. ���ε� ����(?) ä���
				pst.setString(1, status);
				pst.setString(2, id);

				// 6. sql ���� ���ó��
				int cnt = pst.executeUpdate();



			} catch (Exception e) {
				System.out.println("������Ʈ ����!");
				e.printStackTrace();

			} finally {

				close();

			}
			
	
		
		
	}
	//3. ȸ������ ���
	public int join(String id, String pw, String name, String nick, String phone, String email, int postcd, String addr, String addrdtl1, String addrdtl2) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "insert into T_user values(?, ?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?, ?)";
			
			//4. ���� ��ü ����(PreparedStatement)
			pst = conn.prepareStatement(sql);
			//-> SQLException -> sql ���ǰ� ����� �Ǿ����� ���� ��
			
			//5. ���ε� ����(?) ä���
			pst.setString(1, id);
			pst.setString(2, pw);
			pst.setString(3, name);
			pst.setString(4, nick);
			pst.setString(5, phone);
			pst.setString(6, email);
			pst.setString(7, addr);
			if(id.equals("admin")) {
				pst.setString(8, "Y");
			}else {
				pst.setString(8, "N");
			}
			pst.setString(9, "Y");
			pst.setString(10, "100");
			pst.setInt(11, postcd);
			pst.setString(12, addrdtl1);
			pst.setString(13, addrdtl2);

			
			//6. sql ����
			//executeUpdate(): update, insert, delete(���̺� �� ��ȭ o) -> int
			//executeQuery(): select(���̺� �� ��ȭx) -> ResultSet(������)
			cnt = pst.executeUpdate();
			

			
		}catch(Exception e) { //try ���� ���� ��Ȳ�� �߻��� ���
			System.out.println("ȸ������ ����!");
			e.printStackTrace(); //���ܻ�Ȳ�� �߻�������� ���
		}finally { //try���� ���ܻ�Ȳ�� �߻��ϴ���/�����ʴ��� ���� ������ �������� ����
			close();
		}
		
		return cnt;
		
	}
	
	//4. ��ü ȸ�� ����
	
	public ArrayList<ClassVO> selectAll() {
		ArrayList<ClassVO> al = new ArrayList<ClassVO>();
		
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select * from T_class";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();
			
			
			
			while (rs.next()) {
				int c_seq = rs.getInt("c_seq");
				int edu_seq = rs.getInt("edu_seq");
				String c_name = rs.getString("c_name");
				String c_category1 = rs.getString("c_category1");
				String c_category2 = rs.getString("c_category2");
				String c_category3 = rs.getString("c_category3");
				String c_location = rs.getString("c_location");
				String c_time = rs.getString("c_time");
				String c_start_dt = rs.getString("c_start_dt");
				String c_end_dt = rs.getString("c_end_dt");
				int c_count = rs.getInt("c_count");
				int c_pay = rs.getInt("c_pay");
				

				ClassVO vo = new ClassVO(c_seq, edu_seq, c_name, c_category1, c_category2, c_category3, c_location, c_time, c_start_dt, c_end_dt, c_count, c_pay);
				
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
	
	
	public UserVO selectOne(String id) {
		UserVO vo = null;
		
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

				vo = new UserVO(get_id, name, nick, phone, email, postcd, addr, addrdtl1, addrdtl2, joinDt, point, status);
				


			}

		} catch (Exception e) {
			System.out.println("�α��ν���!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return vo;
		
		
	}
	
	
	public boolean checkId(String id) {
		boolean check = true;
		try {
			get_conn();
			// 3. ������ sql ����
			String sql = "select * from T_user where u_id = ?";

			// 4. PreparedStatement ��ü ����
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			// 6. sql ���� ���ó��
			rs = pst.executeQuery();
			
			
			
			if (!rs.next()) {
				check = false;
			}

		} catch (Exception e) {
			System.out.println("�α��ν���!");
			e.printStackTrace();

		} finally {
			close();
			

		}
		
		return check;
		
		
	}
	
	
	public int deleteClass(int num) {
		
		int cnt = 0;
		
		try {
			get_conn();
			
			//3. ������ sql ����
			String sql = "delete from t_class where c_seq = ?";
			
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
