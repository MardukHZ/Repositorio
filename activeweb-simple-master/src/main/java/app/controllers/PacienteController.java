/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controllers;

import app.models.Paciente;
import java.util.List;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.DELETE;
import org.javalite.activeweb.annotations.POST;

/**
 *
 * @author Marduk
 */
public class PacienteController extends AppController{
    
    public void index(){
    List<Paciente> p = Paciente.findAll();
    view("paciente", p);
    }
    
    @POST
    public void add(){
        
        Paciente pa = new Paciente();
        pa.fromMap(params1st());
        view("paciente", pa);
        /*
        if (pa.save()) {
            redirect(PacienteController.class);
        }
        else{
        flash("errores", pa.errors());
        render("formularioPaciente");
        }*/
        
        if(!pa.save()){
            flash("errores", pa.errors());
            flash("params", params1st());
            redirect(PacienteController.class, "formularioPaciente");
        }else{
            flash("message", "Nuevo paciente añadido: " + pa.get("nombre_paciente")+" "+ pa.get("apellido_paciente"));
            redirect(PacienteController.class);
        }
        
        
    }
    @DELETE
    public void delete(){

        Paciente p = (Paciente)Paciente.findById(getId());
        String nombre = p.getString("nombre_paciente");
        String apellido = p.getString("apellido_paciente");
        p.delete();
        flash("message", "Paciente: '" + nombre + " " + apellido +"' Fue Eliminado con exito");
        redirect(PacienteController.class);
        
        
        
    }
    public void formularioPaciente(){
    
    }

}
