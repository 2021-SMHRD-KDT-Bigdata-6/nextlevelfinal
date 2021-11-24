package Controller_Board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model_Board.BoardDAO;

@WebServlet("/DeleteBoard")
public class DeleteBoard_Temp extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("���� ������??");
		
		System.out.println("������ ��ȣ :" + num);
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.deleteArticle(num);
		
		if(cnt>0) {
			System.out.println("�� ���� ����");
			
		}else{
			System.out.println("�� ���� ����");
		}
		
		
	}

}
