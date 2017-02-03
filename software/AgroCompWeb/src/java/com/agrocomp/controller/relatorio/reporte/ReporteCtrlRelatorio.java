package com.agrocomp.controller.relatorio.reporte;

import com.agrocomp.model.ConnectionManager;
import com.agrocomp.model.entity.Administrador;
import com.agrocomp.model.entity.Usuario;
import java.io.InputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReporteCtrlRelatorio {

    @RequestMapping(value = "/reporte/pdf", method = RequestMethod.GET)
    public void streamPDF(HttpServletResponse response, HttpSession session) throws Exception {
        //Fonte dados
        Connection conn = ConnectionManager.getInstance().getConnection();
        //Parametros
        Map parameters = new HashMap();
        Usuario usuario = (Administrador) session.getAttribute("usuarioLogin");
        parameters.put("USER", usuario.getNome());
        parameters.put("LOGO", ReporteCtrlRelatorio.class.getResource("/com/agrocomp/img/LogoAgroComp.png"));
        //Criando o relatório.
        InputStream report = ReporteCtrlRelatorio.class.getResourceAsStream("/com/agrocomp/controller/relatorio/reporte/relatorioreportes.jasper");
        JasperPrint print = JasperFillManager.fillReport(report, parameters, conn);
        //Exportando em PDF
        byte[] pdf = JasperExportManager.exportReportToPdf(print);

        response.setContentType("application/pdf");
        response.getOutputStream().write(pdf);
        response.flushBuffer();
    }
}
