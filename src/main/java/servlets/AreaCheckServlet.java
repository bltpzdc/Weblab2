package servlets;

import tools.DataBox;
import tools.HitChecker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "areaCheckServlet", value = "/areaCheck-servlet")
public class AreaCheckServlet extends HttpServlet {
    private final HitChecker hitChecker = new HitChecker();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final HttpSession session = request.getSession();
        if (session.getAttribute("DataBoxes") == null) session.setAttribute("DataBoxes", new LinkedList<Data>());
        int count = request.getParameterValues("Radius").length;
        boolean wasHit;
        for (int i = 0; i < count; i++){
            long scriptTimeBegin = System.currentTimeMillis();
            wasHit = hitChecker.wasHit(request.getParameter("xCoordinate"),
                    request.getParameter("yCoordinate"),
                    request.getParameterValues("Radius")[i]);
            LinkedList<DataBox> list = (LinkedList<DataBox>) session.getAttribute("DataBoxes");
            list.add(new DataBox(request.getParameter("xCoordinate"), request.getParameter("yCoordinate"),
                    request.getParameterValues("Radius")[i], wasHit, System.currentTimeMillis() - scriptTimeBegin));
            session.setAttribute("DataBoxes", list);
            System.out.println(list.getLast().getScriptTime());
        }
        request.getRequestDispatcher("/response.jsp").forward(request, response);
    }
}
