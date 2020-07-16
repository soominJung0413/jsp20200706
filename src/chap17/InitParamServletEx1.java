package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//  WebServlet어노테이션의 속성으로  initParams = {@WebInitParam(name = "name1", value = "value2" )} 을주면 초기화 파라미터를 
// 정의할 수 있게 된다.

@WebServlet(urlPatterns = {"/InitParamEX1-1"} , initParams = {
		@WebInitParam(name = "name1", value = "value1" )
		, @WebInitParam(name = "name3" , value = "value3")})
public class InitParamServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InitParamServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String val1 = getInitParameter("name1");
		String val2 = getInitParameter("name2");
		
		String val3 = getInitParameter("name3");
		String val4 = getInitParameter("name4");
		
		String val5 = getInitParameter("jdbcUrl1");
		String val6 = getInitParameter("jdbcUrl2");
		
		response.getWriter().append(val1 +" / "+val2 +" / "+val3 + " / "+val4 +"\n"+val5+" / "+val6).append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
