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
@Table ("ficha")
public class Ficha extends Model{
    static{
    validatePresenceOf("id_doctor","id_paciente").message("  Seleccione opcion valida");
    }
}
