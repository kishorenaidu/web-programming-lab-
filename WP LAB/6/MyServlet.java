 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String designation = request.getParameter("designation");
		double basic = Double.parseDouble(request.getParameter("basic"));
		String empCode = request.getParameter("empcode");
		double ma = 0.15;
		double conveyanceP = 0.05;
		double taxPercentage = 0.04;
		if(designation.equals("Java Programmer")) {
			ma = 0.20;
			conveyanceP = 0.10;
		}
		double medicalAllowance = basic * ma;
		double conveyance = basic * conveyanceP;
		double tax = basic * taxPercentage;
		double totalEarning = basic + medicalAllowance + conveyance;
		double totalDeduction = tax;
		double totalSalary = totalEarning - totalDeduction;
		request.setAttribute("empName", name);
		request.setAttribute("empDesignation", designation);
		request.setAttribute("basicSal", basic);
		request.setAttribute("medical", medicalAllowance);
		request.setAttribute("conveyance", conveyance);
		request.setAttribute("tax", tax);
		request.setAttribute("earning", totalEarning);
		request.setAttribute("deduction", totalDeduction);
		request.setAttribute("totalSal", totalSalary);
		request.getRequestDispatcher("/output.jsp").forward(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
