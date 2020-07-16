package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.verify.Member;

/**
 * Servlet implementation class ThreadSerlvetEx1
 */
@WebServlet("/thread1")
public class ThreadSerlvetEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private int i =0;
       Member member = new Member();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreadSerlvetEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		i++;
		member.setName("name");
		
		/* 
		 * request : Thread-safe 하다. 하나의 요청당 하나의 Thread 가 사용되므로 Thread-safe 하게 됨 쓰는 작업은 여기서 진행됨 
		 * session : 한 브라우저 상의 모든 서블릿이 공유하므로 쓰기작업을 하면 안됨 redirect 같이 불가피한 작업의 정보공유는 session이 사용됨
		 * applicaton : 모든 어플레케이션 서블릿이 공유하므로 쓰기작업을 하면 안됨 보장되는 경우가 있음
		 * 
		 *  */
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
