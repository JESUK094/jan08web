package com.sukgi.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sukgi.dao.BoardDAO;
import com.sukgi.dao.LogDAO;
import com.sukgi.dto.BoardDTO;
import com.sukgi.dto.CommentDTO;
import com.sukgi.util.Util;

@WebServlet("/detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Detail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 오는 no잡기
		// int no = Integer.parseInt(request.getParameter("no"));
		int no = Util.str2Int(request.getParameter("no"));
		
		
		
		
		// 데이터베이스에 질의하기
		BoardDAO dao = new BoardDAO();// 숫자야? 물어본거
		
		//2024.01.23
		LogDAO log = new LogDAO();
		dao.logwrite(Util.getIP(request), "./detail", "no="+no);
		//로그인한 회원이라면 읽음수 올리기 2024-01-19 프레임워크 프로그래밍 01/31까지
		HttpSession session = request.getSession();
		if(session.getAttribute("mid") != null) {
			//bno, mno
			dao.countUp(no,(String)session.getAttribute("mid"));
		}
		
		
		BoardDTO dto = dao.detail(no);//
//		System.out.println(dto.getTitle());
//		System.out.println(dto.getContent() == null);
		if(no == 0 || dto.getContent() == null) {
			//null이면 에러로
			response.sendRedirect("./error.jsp");
		} else {
			// 정상출력
			// 내용 가져오기
			request.setAttribute("detail", dto);
			
			//2024.01.22 댓글이 있다면 List 뽑아내기
			List<CommentDTO> commentList = dao.commentList(no);//보드 번호 들어오게
			
			if(commentList.size() > 0) {
				request.setAttribute("commentList", commentList);//있으면 0보다 클테니까, 없을때는 집어넣지마
			}

			// 리퀘스트디스패쳐 호출하기
			RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
