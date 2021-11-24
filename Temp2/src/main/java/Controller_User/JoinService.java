package Controller_User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model_User.UserDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); //��û������ ���ڵ�
		
		System.out.println("������");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int postcd = Integer.parseInt(request.getParameter("postcd"));
		String addr = request.getParameter("addr");
		String addrdtl1 = request.getParameter("addrdtl1");
		String addrdtl2 = request.getParameter("addrdtl2");
		
		
		
		
		
		UserDAO dao = new UserDAO();
		int cnt = dao.join(id, pw, name, nick, phone, email, postcd, addr, addrdtl1, addrdtl2);
		
		if(cnt>0) {
			System.out.println("ȸ������ ����!");
			//-forwarding ��� ������ �̵�
			RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
			//setAttribute(Name(String), Value(Object)) 
			request.setAttribute("nick", nick);	//����� ���� ����
			
			rd.forward(request, response);
			
		}else {
			System.out.println("ȸ������ ����!");
			response.sendRedirect("index.jsp");
		}
		
		
		
	}

}
