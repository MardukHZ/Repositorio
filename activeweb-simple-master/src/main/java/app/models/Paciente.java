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
 * @author Marduk
 */
@Table("paciente")
public class Paciente extends Model{
    static{
    validatePresenceOf("nombre_paciente", "apellido_paciente","nacionalidad").message("Complete campos");
    }
}
