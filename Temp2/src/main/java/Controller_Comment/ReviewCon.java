package Controller_Comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model_User.ReviewDAO;
import Model_User.UserVO;

@WebServlet("/ReviewCon")
public class ReviewCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		System.out.println("立辟 己傍");
		int rate =Integer.parseInt(request.getParameter("star"));
		UserVO vo = (UserVO) session.getAttribute("user");
		String id = vo.getId();
		int cnum  = Integer.parseInt(request.getParameter("cnum"));
		String opinion = request.getParameter("opinion");
		System.out.println(rate);
		System.out.println(cnum);
		System.out.println(opinion);
		System.out.print(id);
		
		ReviewDAO dao = new ReviewDAO();
		int cnt = dao.reviewWt(cnum, id, rate, opinion);
		if(cnt>0) {
			System.out.println("历厘 己傍");
		}
		
		
		
	}

}
