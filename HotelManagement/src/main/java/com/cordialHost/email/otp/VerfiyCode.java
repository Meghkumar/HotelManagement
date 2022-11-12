package com.cordialHost.email.otp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/VerfiyCode")
public class VerfiyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public VerfiyCode() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

		try {
		PrintWriter out = response.getWriter();
		//String firstName = request.getParameter("firstName");
		String email = request.getParameter("email");
		
		
		HttpSession session = request.getSession();
		MailUser mailuser = (MailUser) session.getAttribute("authocode");
		String code = request.getParameter("authocode");

		if (code.equals(mailuser.getCode())) {
			out.println("Verification done");
		} else {
			out.println("Incorrect Verification Pin");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	}

	
}
