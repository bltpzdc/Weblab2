package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "controllerServlet", value = "/controller-servlet")
public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("getOldValues")!=null){
            request.getRequestDispatcher("/data-servlet").forward(request, response);
            return;
        }
        request.getRequestDispatcher("/areaCheck-servlet").forward(request, response);
    }
}
