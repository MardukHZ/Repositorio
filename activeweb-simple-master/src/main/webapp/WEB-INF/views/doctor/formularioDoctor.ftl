
<span class="error_message"><@flash name="message"/></span><br>
<h2>Ingreso doctores</h2>

<@form action="add" method="POST">
<table style="margin:30px">
        <tr>
            <td>Nombre Doctor</td>
            <td><input type="text" name="nombre_doctor" value="${(flasher.params.nombre_doctor)!}"><br>
                            <span class="error">${(flasher.errores.nombre_doctor)!}</span>
            </td>
        </tr>
        <tr>
            <td>Apellido Doctor</td>
            <td><input type="text" name="apellido_doctor" value="${(flasher.params.apellido_doctor)!}"><br>
                            <span class="error">${(flasher.errores.apellido_doctor)!}</span>
            </td>
        </tr>
        <tr>
            <td>Especialidad</td>
            <td><input type="text" name="especialidad" value="${(flasher.params.especialidad)!}"><br>
                            <span class="error">${(flasher.errores.especialidad)!}</span>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Agregar doctor"></td>

        </tr>
    </table>
</@form> 
<@link_to controller="Doctor">Volver</@link_to>