package n.HotelRoom;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String desc = request.getParameter("desc");
		String loc = request.getParameter("loc");
		int rate = Integer.parseInt(request.getParameter("rate")); 
		int parking = Integer.parseInt(request.getParameter("parking"));
		int wifi = Integer.parseInt(request.getParameter("wifi"));
		int residency = Integer.parseInt(request.getParameter("residency"));

		Part file = request.getPart("image"); // image manipulation
		String imageFileName = Paths.get(file.getSubmittedFileName()).getFileName().toString();  // store image file name with extension
		String uploadPath = "C:/Users/nadun/Desktop/HotelReservationSystem/WebContent/images" + imageFileName;  // upload path where we have to upload our actual image //chang me when you change proj location


		try (FileOutputStream fos = new FileOutputStream(uploadPath); InputStream is = file.getInputStream()) { // write to img folder

			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);

			String fileExtension = imageFileName.substring(imageFileName.lastIndexOf(".") + 1);

			File storedImageFile = new File(uploadPath);
			if (storedImageFile.exists()) {
				storedImageFile.renameTo(new File(uploadPath + "." + fileExtension));
			}
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}


		boolean result = HotelDButility.insertHotel(desc, loc, rate, parking, wifi, residency, uploadPath); //gives image upload path to db

		if(result == true) {
			request.setAttribute("message", "New Data Added successfully !!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
			dis.forward(request, response);
		} else {
			request.setAttribute("message", "Failed to Add New Data!!");
			RequestDispatcher dis = request.getRequestDispatcher("mainManagePage.jsp");
		}

	}


}


