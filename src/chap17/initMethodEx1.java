package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/init1")
public class initMethodEx1 extends HttpServlet{
	@Override
		public void init() throws ServletException {
			// TODO Auto-generated method stub
			super.init();
			System.out.println("initMethodEx1 의 init 메소드 최초 실행");
		}
	
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
		resp.getWriter().append("init do get 실행");
	System.out.println("init doGet 실행");
}


 
 
}
