
package Controler;

import Modelo.Persona;
import Util.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Controlador {
    Conexion cc = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(cc.conectar());
    ModelAndView mav = new ModelAndView();
            
    
    @RequestMapping
    public ModelAndView Listar(){
        String sql = "Select * from persona";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
                
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }    
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql = "Insert into persona(DNI,Nombres) values(?,?)";
        this.jdbcTemplate.update(sql,p.getDni(),p.getNom());
        return new ModelAndView("redirect:/index.htm");
    
    
    }  
    
    
}
