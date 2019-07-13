/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controllers;

import app.models.Doctor;
import app.models.Ficha;
import app.models.Paciente;
import java.util.List;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.DELETE;
import org.javalite.activeweb.annotations.POST;

/**
 *
 * @author Marduk
 */
public class FichaController extends AppController{
    public void index(){
    List<Doctor> doctor = Doctor.findAll();
    view("doctor", doctor);
    List<Paciente> p = Paciente.findAll();
    view("paciente", p);
    }
    
    @POST
    public void add(){
        Ficha ficha = new Ficha();
        ficha.fromMap(params1st());
        view("ficha",ficha);
        
        if (ficha.save()) {
            redirect(FichaController.class);
            flash("message", "Nuevo registro añadido");

        }
        else{
        flash("errores", ficha.errors());
        redirect(FichaController.class, "index");
        }
    }
    
    @DELETE
    public void delete(){
        Ficha ficha = (Ficha)Ficha.findById(getId());
        ficha.delete();
        flash("message", "Registro eliminado con exito");
        redirect(FichaController.class, "listaFicha");
    }
    
    public void listaFicha(){
        List<Ficha> ficha = Ficha.findAll();
        view("ficha",ficha);
    }
    
}
