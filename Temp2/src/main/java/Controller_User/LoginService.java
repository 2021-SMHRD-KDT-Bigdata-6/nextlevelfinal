package Controller_User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model_User.UserDAO;
import Model_User.UserVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ��û������ �ѱ� ���ڵ�
				request.setCharacterEncoding("euc-kr");

				// ��û������ �޾ƿ���
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");

				UserDAO dao = new UserDAO();
				UserVO vo = dao.login(id, pw);
				
				if(vo!=null) {
					// ���ǰ�ü ����
					HttpSession session = request.getSession();
					// ���� �� ����
					session.setAttribute("user", vo);
					System.out.print("�α��μ���");
					response.sendRedirect("index.jsp");
				}else {
					System.out.print("�α��ν���");
					response.sendRedirect("index.jsp");
				}
		
		
		
	}

}
