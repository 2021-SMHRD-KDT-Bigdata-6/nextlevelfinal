package Controller_Board;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model_Board.BoardDAO;
import Model_User.UserDAO;
import Model_User.UserVO;

@WebServlet("/WriteBoard")
public class WriteBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try{
		// post��� ���ڵ�
		request.setCharacterEncoding("euc-kr");
		
		//1. request ��ü
		//2. savePath(������)
		// getServletContext : ���� ���� ȯ�濡 ���� ����
		// getRealPath : ���� ���� ���
		String savePath = request.getServletContext().getRealPath("fileUpload");
		
		
		//3. ������ ũ�� ����
		//1 mb = 1024 kb
		//1 kb = 1024 byte
		int maxSize = 10*1024*1024; // 10MB
		
		//4. ���ڵ� ���
		String encoding = "euc-kr";
		
		//5. �����̸��ߺ����� new DefaultFileRenamePolicy()
		//: ���ϸ��� ��ĥ �� �ڿ� ���ڸ� �ٿ��� �ߺ��������ִ� ����
		
		
		MultipartRequest multi = new MultipartRequest(
				request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		//DB�� �����ϱ� ���ؼ� ���� ������ ������ ����
		String title = multi.getParameter("title");
		String writer = multi.getParameter("id");
		// �̹��� �±׿� ��θ� �ۼ��� ���� 16������ �ۼ�������Ѵ�.(���߿� HTML���� ����� �� ���)
		// ���� ���ڵ��� �����ؾ���! ���ڵ�(���� -> �ڵ�)
		// URLEncoder.encode(���ڵ��� ��, ���ڵ� ���)
		String file1 = null;
		String file2 = null;
		if(multi.getFilesystemName("file1") !=null) {
			file1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		}
		if(multi.getFilesystemName("file2") !=null) {
			file2 = URLEncoder.encode(multi.getFilesystemName("file2"), "euc-kr");
		}
		String content = multi.getParameter("content");
		

		
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.writeArticle(title, content, file1, file2, writer);
		
		UserDAO dao2 = new UserDAO();
		
		UserVO vo2 = dao2.selectOne(writer);
		
		int point = vo2.getPoint();
		point += 100;
		
		int cnt2 = dao2.pointUpdate(point, writer);
		
		
		
		if(cnt2 > 0) {
			System.out.println("����Ʈ 100�� �ο� �Ϸ�");
		}else {
			System.out.println("����Ʈ 100�� �ο� ����");
		}
		

		if(cnt > 0) {
			System.out.println("���� ���ε� ����!");
			response.sendRedirect("boardMain.jsp");
		}else {
			System.out.println("���� ���ε� ����!");
		}
		
		
		 }catch(Exception e){
	            e.printStackTrace();
	        }
		
		
	}

}
