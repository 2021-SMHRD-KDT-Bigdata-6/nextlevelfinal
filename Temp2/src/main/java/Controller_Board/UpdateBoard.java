package Controller_Board;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model_Board.BoardDAO;

@WebServlet("/UpdateBoard")
public class UpdateBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try{
		// post��� ���ڵ�
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		System.out.println("������Ʈ���� ������?");
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
		int num = Integer.parseInt(multi.getParameter("num"));
		// �̹��� �±׿� ��θ� �ۼ��� ���� 16������ �ۼ�������Ѵ�.(���߿� HTML���� ����� �� ���)
		// ���� ���ڵ��� �����ؾ���! ���ڵ�(���� -> �ڵ�)
		// URLEncoder.encode(���ڵ��� ��, ���ڵ� ���)
		
		String file1 = null;
		if(multi.getFilesystemName("file1") !=null) {
			file1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		}

		String content = multi.getParameter("content");
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.updateArticle(title, content, file1, num);

		if(cnt > 0) {
			System.out.println("�� ������Ʈ ����!");
			response.sendRedirect("BoardView.jsp?num="+num);
		}else {
			System.out.println("�� ������Ʈ ����!");
		}
		
		 }catch(Exception e){
	            e.printStackTrace();
	        }
	
	}

}
