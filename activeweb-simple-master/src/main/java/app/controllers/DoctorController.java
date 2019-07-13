/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controllers;

import app.models.Doctor;
import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.DELETE;
import org.javalite.activeweb.annotations.POST;

/**
 *
 * @author 20317991-K
 */
public class DoctorController extends AppController {
    
    public void index(){
        
         if("json".equals(format())){
            render().noLayout().contentType("application/json");
        }
        
    List<Doctor> doctor = Doctor.findAll();
    //view("doctor", Doctor.findAll().toMaps());
    view("doctor", doctor);
    }
    @POST
    public void add(){
        
        Doctor doctor = new Doctor();
        doctor.fromMap(params1st());
        view("doctor", doctor);
        /*
        if (doctor.save()) {
            redirect(DoctorController.class);
        }
        else{
        flash("errores", doctor.errors());
        render("formularioDoctor");
        }*/
        
        if(!doctor.save()){
            flash("errores", doctor.errors());
            flash("params", params1st());
            redirect(DoctorController.class, "formularioDoctor");
        }else{
            flash("message", "Nuevo doctor añadido: " + doctor.get("nombre_doctor")+" "+ doctor.get("apellido_doctor"));
            redirect(DoctorController.class);
        }
    }
    @DELETE
    public void delete(){

        Doctor d = (Doctor)Doctor.findById(getId());
        String nombre = d.getString("nombre_doctor");
        String apellido = d.getString("apellido_doctor");
        d.delete();
        flash("message", "Doctor/a: '" + nombre + " " + apellido + "' Fue Eliminado con exito");
        redirect(DoctorController.class);
    }
    public void formularioDoctor(){
    
    }
}
