package com.cordialHost.email.otp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserVerify")
public class UserVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserVerify() {
        super();
   
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String name = request.getParameter("firstName");
		String email = request.getParameter("email");
		
		SendEmail sm = new SendEmail();
		String code = sm.getRandom();
		
		MailUser user = new MailUser(name,email,code);
		boolean test = sm.sendEmail(user);
		if(test) {
			HttpSession session = request.getSession();
			session.setAttribute("autocode", user);
			response.sendRedirect("orders.jsp");
		
		}

		
		
		
		
		
	}

}
