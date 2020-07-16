package chap17.path;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author admin
 *
 */

public class UrlPathEx1 extends HttpServlet{
	 /**
	  *   실습
	  * ' / ' 시작  =   '/*' 로 종료 경로 매핑을 위해서 사용한다.
	  * 
	  * ' *. ' 로 시작  =  확장자 매핑
	  * 
	  * '/ ' 만있다면 : 기본 서블릿
	  * 
	  * 그 외에는 정확한 매핑이 있음.
	  * 
	  * 우선순위
	  * 
	  *1.정확한 매핑
	  *2.경로 매핑
	  *   2-1 가장긴 경로
	  *   3.확장자 매핑
	  *   4.기본 매핑
	  */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().append("Servlet 1 ").append(req.getContextPath());
	}
}
