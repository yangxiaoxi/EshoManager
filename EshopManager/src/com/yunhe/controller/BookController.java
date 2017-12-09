package com.yunhe.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;















import net.sf.json.JSONObject;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yunhe.pojo.Ad;
import com.yunhe.pojo.Book;
import com.yunhe.service.BookService;
import com.yunhe.service.LunBoService;
import com.yunhe.service.impl.BooKServiceImpl;

@WebServlet("/book")
public class BookController extends HttpServlet {

	private BookService bookService;
	private LunBoService lunBoService;
	
	@Override
	public void init() throws ServletException {
		ApplicationContext context = new ClassPathXmlApplicationContext("application2.xml");
		bookService=(BookService)context.getBean("bookService");
		lunBoService=(LunBoService)context.getBean("lunBoService");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	 doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("method");
		if("selectList".equals(method)){
			selectList(req,resp);
		}
		if("delete".equals(method)){
			delete(req,resp);
		}
		if("operate".equals(method)){
			operate(req,resp);
		}
		
		if("recycle".equals(method)){
			recycle(req,resp);
		}
		if("update".equals(method)){
			update(req,resp);
		}
		if("addPhoto".equals(method)){
			addPhoto(req,resp);
		}
		
		if("selectAllBook".equals(method)){
			selectAllBook(req,resp);
		}
		if("deletePhoto".equals(method)){
			deletePhoto(req,resp);
		}
		
		if("selectPhoto".equals(method)){
			selectPhoto(req,resp);
		}
		
	}
	 //1, ��ҳ��������ѯ
	private void selectList(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String book_name = req.getParameter("book_name");//��������ѯ����
		req.setAttribute("book_name", book_name);
		String book_author = req.getParameter("book_author");//����
		req.setAttribute("book_author", book_author);
		String statusStr = req.getParameter("status");//�Ƿ����¼�
		req.setAttribute("statusStr", statusStr);
		//1,��ҳ
		String currentPageStr = req.getParameter("currentPage");//��ǰ�ڼ�ҳ
		int currentPage = currentPageStr==null?1:Integer.parseInt(currentPageStr);
		req.setAttribute("currentPage", currentPage);
		int pageSize = 15;//ÿҳ������
		Integer status = null;
		if(statusStr!=null &&!statusStr.equals("")){
			status=Integer.parseInt(statusStr);
		}
		List<Book> bookList =  bookService.selectBookByConditionPage(book_name, book_author, status, currentPage, pageSize);//��������ҳ��ѯ�鱾��Ϣ
		req.setAttribute("bookList", bookList);
		int totalCount = bookService.selectCountByConditionPage(book_name, book_author,status);//����۲�ѯ��¼��
		int totalPage = totalCount%pageSize==0?totalCount/pageSize:totalCount/pageSize+1;//��ҳ��
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		//1.1 ����
		int groupSize = 4;//ÿ�����ҳ
		int totalGroup = totalPage%groupSize==0?totalPage/groupSize:totalPage/groupSize+1;//������
		int currentPageIsWhichGroup = currentPage%groupSize==0?currentPage/groupSize:currentPage/groupSize+1;    //��ǰҳ���ڵڼ��飻
		System.out.println("��ǰ�ǵڼ���" +currentPageIsWhichGroup);
		int start=(currentPageIsWhichGroup-1)*groupSize+1; //��ǰ�鿪ʼ��λ�ã�
		req.setAttribute("start", start);
	    int end =totalPage%groupSize==0?(currentPageIsWhichGroup+1)*groupSize:totalPage;//��ǰ�������λ��
	    System.out.println("��ǰ�������λ����"+end);
	    req.setAttribute("end", end);
		req.getRequestDispatcher("bookinfo.jsp").forward(req, resp);
		
	}
	
	
	//2 ,ɾ��ĳ���鱾��¼
	private void delete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		  String book_id = req.getParameter("book_id");
	 	  bookService.delereBookById(Integer.parseInt(book_id));
	 	  resp.sendRedirect("book?method=selectList");
	}
	
	//3,���������鼮���¼ܵ�
	private void operate(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		  String book_ids = req.getParameter("book_ids");
		  System.out.println("book_ids is" +book_ids);
		  //  operate_id  1--����վ 2--�ϼ� 3--�¼� 4--��Ʒ 5--ȡ����Ʒ  6--���� 7--ȡ������
		  String operate_id = req.getParameter("operate_id");
		  System.out.println("operate_id is" +operate_id);
		  bookService.operateBook(book_ids, Integer.parseInt(operate_id));
		 resp.sendRedirect("book?method=selectList");
	}
	
	
	//4, ���һ���վ  
	private void  recycle (HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
		 List<Book> recyleBookList = 	bookService.selectBookRecyle();
		 req.setAttribute("recyleBookList", recyleBookList);
		 int recyleBookCount =  bookService.selectCountRecyle();
		 req.setAttribute("recyleBookCount", recyleBookCount);
		req.getRequestDispatcher("recycle.jsp").forward(req, resp);
	}
	
	//5, �޸�ͼ����Ϣ
		private void  update (HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException{
			String book_id = req.getParameter("book_id");
			Book book = bookService.selectBookById(Integer.parseInt(book_id));
			req.setAttribute("book", book);
			req.getRequestDispatcher("updateBook.jsp").forward(req, resp);
		}
		
   //6, ����ֲ�ͼ
		private void  addPhoto (HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException{
			String book_id="0";
			String imgName = "";
			if(ServletFileUpload.isMultipartContent(req)){//1,�жϱ��Ƿ����ļ�����ʽ�ύ
				DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload fileUpload = new ServletFileUpload(factory);
			   try {
				List<FileItem> itemList = fileUpload.parseRequest(req);
				Iterator<FileItem>  it =   itemList.iterator();
				while (it.hasNext()) {
					FileItem fileItem = (FileItem) it.next();
					if(fileItem.isFormField()){//��ͨ���ֶ�
						book_id=fileItem.getString();
					}else{//������ļ��ֶ� �����ϴ�����Ŀ��upoadĿ¼��
						imgName=System.currentTimeMillis()+fileItem.getName();
						fileItem.write(new File(req.getServletContext().getRealPath("/upload"),imgName));
					}
				}
			   lunBoService.insertPhoto(imgName, Integer.parseInt(book_id));
			} catch (FileUploadException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			}
			resp.getWriter().print("<script type='text/javascript'>alert('��ӳɹ�');window.location.href='book?method=selectPhoto';</script>");
		}
		
  //7, ��ѯ���е��鼮��id��name
		private void  selectAllBook (HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException{
		 List<Book> bookList = 	bookService.selectAllBook();
		 JSONObject jo = new JSONObject();
		 jo.put("bookList", bookList);
		 resp.getWriter().print(jo.toString());
		}
		
 //8,ɾ���ֲ�ͼ
		private void  deletePhoto (HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException{
			String ad_id  = req.getParameter("ad_id");
			   lunBoService.deletePhoto(Integer.parseInt(ad_id));
				 JSONObject jo = new JSONObject();
				 jo.put("status", 200);
				 resp.getWriter().print(jo.toString());
			}
	//8,�����ֲ�ͼ
		private void  selectPhoto (HttpServletRequest req, HttpServletResponse resp)
						throws ServletException, IOException{
					  List<Ad> adList =   lunBoService.selectPhoto();
					  req.setAttribute("adList", adList);
					  req.getRequestDispatcher("lunbo.jsp").forward(req, resp);
			}
}
