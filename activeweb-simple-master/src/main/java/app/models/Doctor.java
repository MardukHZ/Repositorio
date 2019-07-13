/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

/**
 *
 * @author 20317991-K
 */
@Table("doctor")
public class Doctor extends Model{
    static{
    validatePresenceOf("nombre_doctor", "apellido_doctor","especialidad").message("Complete los campos");
    }
}
