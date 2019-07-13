<h2>Ingreso pacientes</h2>

<@form action="add" method="POST">
<table style="margin:30px">
        <tr>
            <td>Nombre paciente</td>
            <td><input type="text" name="nombre_paciente" value="${(flasher.params.nombre_paciente)!}"><br>
                            <span class="error">${(flasher.errores.nombre_paciente)!}</span>
            </td>
        </tr>
        <tr>
            <td>Apellido paciente</td>
            <td><input type="text" name="apellido_paciente" value="${(flasher.params.apellido_paciente)!}"><br>
                            <span class="error">${(flasher.errores.apellido_paciente)!}</span>
            </td>
        </tr>
        <tr>
            <td>Nacionalidad</td>
            <td><input type="text" name="nacionalidad" value="${(flasher.params.nacionalidad)!}"><br>
                            <span class="error">${(flasher.errores.nacionalidad)!}</span>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Agregar paciente"></td>

        </tr>
    </table>
</@form> 
<@link_to controller="Paciente">Volver</@link_to>
