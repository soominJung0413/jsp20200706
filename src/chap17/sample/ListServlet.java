package chap17.sample;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/sample/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 요청을 전달받을 위치를 알고 있는 객체
		RequestDispatcher dispatcher = request.getRequestDispatcher( request.getContextPath()+"/WEB-INF/chap17/sample/list.jsp");
		//요청과 전달 객체를 넘겨준다.
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//forward 임으로 View는 jsp 파일이나 넘겨받는 곳은 사실 Controller 쪽이다.
		//System.out.println("POST 요청 왔음!");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		//DB 대신 application 영역에 저장해보기
		//ServletContext는 application 이다.
		ServletContext app = getServletContext();
		Object o = app.getAttribute("list");
		
		if(o == null) {
			o = new ArrayList<Item>();
			app.setAttribute("list", o);
		}
		List<Item> list = (List<Item>)o;
		Item i = new Item();
		i.setName(name);
		i.setAge(age);
		
		list.add(i);
		
		request.setAttribute("list", list);
		
		// 해당경로를 가진 dispatcher를 가져온다.
		RequestDispatcher dispatcher  = request.getRequestDispatcher(request.getContextPath()+"/WEB-INF/chap17/sample/list.jsp");
		dispatcher.forward(request, response);
	}

}

