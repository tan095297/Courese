package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveServlet
 */
@WebServlet("/SaveServlet")
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseService service = new CourseService();
		ArrayList<Course> course= service.getCourses();
		request.setAttribute("courses", course);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name =request.getParameter("name");
		String lastname =request.getParameter("lastname");
		String address =request.getParameter("address");
		String province =request.getParameter("province");
		String post =request.getParameter("post");
		String tel =request.getParameter("tel");
		String email =request.getParameter("email");
		
		String[] selectedNo =request.getParameterValues("pNo");
		CourseService service = new CourseService();
		
		int total = 0;
		double vat = 0 ;
		
		ArrayList<Course> cor = new ArrayList<Course>();
		for(String s: selectedNo) {
			int n = Integer.parseInt(s);
			Course p = service.getCourse(n);
			total += p.getPrice();
			vat = p.getPrice()*0.07;
			cor.add(p);

		}
		
		request.setAttribute("name", name);
		request.setAttribute("lastname", lastname);
		request.setAttribute("address", address);
		request.setAttribute("province", province);
		request.setAttribute("post", post);
		request.setAttribute("tel", tel);
		request.setAttribute("email", email);
		request.setAttribute("vat", vat);
		request.getRequestDispatcher("/result.jsp").forward(request, response);
		doGet(request, response);
		
		
		
	}

}
