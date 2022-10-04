package servlets;

import tools.DataBox;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name = "dataServlet", value = "/data-servlet")
public class SendDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StringBuilder dataResponse = new StringBuilder();
        LinkedList<DataBox> dataList = (LinkedList<DataBox>) request.getSession().getAttribute("DataBoxes");
        for (DataBox i : dataList){
            dataResponse.append(i.getX()).append(" ").append(i.getY()).append(" ").append(i.getR()).append("\n");
        }
        response.getWriter().println(dataResponse);
    }
}
