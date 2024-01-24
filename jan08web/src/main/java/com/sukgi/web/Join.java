package com.sukgi.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sukgi.dao.MemberDAO;
import com.sukgi.dto.MemberDTO;

@WebServlet("/join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Join() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		// 값 잡아주세요 id name pw1
		request.setCharacterEncoding("UTF-8");
		MemberDTO dto = new MemberDTO();
		dto.setMid(request.getParameter("id"));//jsp에서 name으로 만든 파라미터 값을 가져온다. dto에 있는 Mid로 넣어준다.
		dto.setMname(request.getParameter("name"));
		dto.setMpw(request.getParameter("pw1"));

		MemberDAO dao = new MemberDAO();//dao에 보내줘야해서 객체를 만들어준다.
		
		// db에 보내주세요.
		int result = dao.join(dto);//dao에 있는 join이라는 메세드를 이용해서 변수(dto)에 넣어줘라 그러면 MemberDAO에 저장된다.

		// 정상적으로 데이터입력을 완료했다면 로그인 페이지로,

		if (result == 1) {
			response.sendRedirect("./login");

		} else {
			response.sendRedirect("./error");
		}
		// 비정상이라면 에러로 보내주세요..

	}

}
