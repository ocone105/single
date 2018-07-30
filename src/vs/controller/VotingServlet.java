package vs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VotingServlet
 */

@WebServlet(name = "vote", urlPatterns = { "/vs/vote.do" })
public class VotingServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String A = request.getParameter("A");
		
		
		
		System.out.println("A"+A);
		
	}

}
