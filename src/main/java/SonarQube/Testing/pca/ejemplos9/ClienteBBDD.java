package SonarQube.Testing.pca.ejemplos9;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ClienteBBDD {

	public static void main(String arg[]) {
		try {
			Class.forName("org.apache.derby.jdbc.ClientDriver");

			Connection conexion = DriverManager.getConnection(
					"jdbc:derby://localhost:1527/bd", "app", "app");
			try {
				// insertar una nueva nota con el texto 'otra linea'
				Statement sentencia1 = conexion.createStatement();
				try {
					sentencia1.executeUpdate(
							"INSERT INTO Nota (idNota) VALUES (4)");
				} finally {
					sentencia1.close();
				}

				Statement sentencia2 = conexion.createStatement();
				try {
					sentencia2.executeUpdate(
							"INSERT INTO Linea (idLinea, idNota, texto)" +
							" VALUES (6, 4, 'otra linea')");
				} finally {
					sentencia2.close();
				}

				// modificación de la persona Luis con idContacto = 2
				// con el correo luis@empresa.com
				Statement sentencia3 = conexion.createStatement();
				try {
					sentencia3.executeUpdate(
							"UPDATE Persona SET correo = 'luis@empresa.com'" +
							" WHERE idContacto = 2");
				} finally {
					sentencia3.close();
				}

				// nombres de contactos del directorio Rectorado
				// con idDirectorioPadre = 7
				Statement sentencia4 = conexion.createStatement();
				try {
					ResultSet iterador = sentencia4.executeQuery(
							"SELECT nombre FROM Contacto" +
							" WHERE idDirectorioPadre = 7");
					while (iterador.next()) {
						System.out.println(iterador.getString("nombre"));
					}
				} finally {
					sentencia4.close();
				}
			} finally {
				conexion.close();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
