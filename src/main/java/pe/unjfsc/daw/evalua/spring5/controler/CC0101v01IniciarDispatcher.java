package pe.unjfsc.daw.evalua.spring5.controler;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CC0101v01IniciarDispatcher {
	public static final Logger LOG = LoggerFactory.getLogger("CC0101v01IniciarDispatcher");

	@RequestMapping(value = "/contactos.pe")
	public ModelAndView handleRequest_contactos(HttpServletRequest request, HttpServletResponse response) {
		String lsArchivoJsp = "contactos"; // Define nombre del archivo jsp fisico sin la extension
		String lsFechaSistema = (new Date()).toString();
		LOG.info("[DAW] lsArchivoJsp: 	{}", lsArchivoJsp);
		LOG.info("[DAW] lsFechaSistema        : {}", lsFechaSistema);
		return new ModelAndView(lsArchivoJsp, "vFechaSistema", lsFechaSistema);
	}
	
	@RequestMapping(value = "/lugares.pe")
	public ModelAndView handleRequest_experiencias(HttpServletRequest request, HttpServletResponse response) {
		String lsArchivoJsp = "lugares"; // Define nombre del archivo jsp fisico sin la extension
		String lsFechaSistema = (new Date()).toString();
		LOG.info("[DAW] lsArchivoJsp: 	{}", lsArchivoJsp);
		LOG.info("[DAW] lsFechaSistema        : {}", lsFechaSistema);
		return new ModelAndView(lsArchivoJsp, "vFechaSistema", lsFechaSistema);
	}	

	@RequestMapping(value = "/vuelos.pe")
	public ModelAndView handleRequest_aviones(HttpServletRequest request, HttpServletResponse response) {
		String lsArchivoJsp = "vuelos"; // Define nombre del archivo jsp fisico sin la extension
		String lsFechaSistema = (new Date()).toString();
		LOG.info("[DAW] lsArchivoJsp: 	{}", lsArchivoJsp);
		LOG.info("[DAW] lsFechaSistema        : {}", lsFechaSistema);
		return new ModelAndView(lsArchivoJsp, "vFechaSistema", lsFechaSistema);
	}	
	
	@RequestMapping(value = "/login.pe")
	public ModelAndView handleRequest_login(HttpServletRequest request, HttpServletResponse response) {
		String lsArchivoJsp = "login"; // Define nombre del archivo jsp fisico sin la extension
		String lsFechaSistema = (new Date()).toString();
		LOG.info("[DAW] lsArchivoJsp: 	{}", lsArchivoJsp);
		LOG.info("[DAW] lsFechaSistema        : {}", lsFechaSistema);
		return new ModelAndView(lsArchivoJsp, "vFechaSistema", lsFechaSistema);
	}


}
