package ui;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Scanner;

public class Main {

	private static final String INPUT = null;
	private static final OutputStream OUTPUT = null;
	public static ArrayList<String[]> deps;
	public int codDep;
	public int codProject;
	public static String[] firstName;
	public static String[] lastName;
	private static String[] departamentos;
	private static String[] posiciones;
	private static String[] projects;
	private static BufferedReader br;
	private static BufferedWriter bw;

	public static void main(String[] args) throws IOException {
		departamentos = new String[] {"Calidad", "Administracion", "Inventario", 
				"Sistemas de informacion", "Expansion", "Logistica"};
		posiciones = new String[] {"Jefe de Departamento", "Ejecutivo", "Secretario", "Aprendiz",
				"Colaborador", "Asistente", "Coordinador", "Contador", "Ingeniero"};
		projects = new String[] {"omega", "beta", "alfa", "xilium", "Juliom", "X project"};
		
		deps = new ArrayList<String[]>();
		
		br = new BufferedReader(new FileReader(INPUT));
		bw = new BufferedWriter(new OutputStreamWriter(OUTPUT));
		
		
		String ins = "";
		for (int i = 0; i < departamentos.length; i++) {
			ins = "INSERT INTO DEPARTMENT VALUES(";
			ins += i + ", ";
			ins += "'" + departamentos[i] +"', ";
			ins += "NULL);";
			
			//TODO escribir el ins
			
			String[] d = new String[3];
			d[0] = i + "";
			d[1] = departamentos[i];
			d[2] = "";
			deps.add(d);
		}
		
		firstName = new String[499];
		lastName = new String[499];
		String line = br.readLine();
		for (int i = 0; i < 499; i++) {
			String[] ar = line.split(",");
			firstName[i] = ar[0];
			lastName[i] = ar[1];
		}
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Cuantas Empleados va a insertar");
		int empleados =  sc.nextInt();
		if (empleados < 20) {
			System.out.println("Minimo debe generar 20 empleados");
		} else {
			String insert = "";
			for (int i = 0; i < empleados; i++) {
				insert = "INSERT INTO EMPLOYEE VALUES(";
				
				insert += i + ", ";
				
				int nom = (int) Math.floor(Math.random() * 498);
				String nombre = firstName[nom];
				insert += "'" + nombre + "', ";
				
				int ape = (int) Math.floor(Math.random() * 498);
				String apellido = lastName[ape];
				insert += "'" + apellido + "', ";
				
				double dir = Math.random();
				String di = "Cll";
				if (dir >= 0.5) {
					di = "Cra";
				}
				int no1 = (int) Math.floor(Math.random() * (200 - 1) + 1);
				int no2 = (int) Math.floor(Math.random() * (200 - 1) + 1);
				int mts = (int) Math.floor(Math.random() * (120 - 1) + 1);
				String direccion = di + " " + no1 + " N° " + no2 + " - " + mts;
				insert += "'" + direccion + "', ";
				
				int mes = (int) Math.floor(Math.random() * (13 - 1) + 1);
				int año = (int) Math.floor(Math.random() * (2002 - 1950) + 1955);
				int dia = (int) Math.floor(Math.random() * (diaGenerator(mes, año) + 1 - 1) + 1);
				String ndia = "";
				if(dia <10) {
					ndia = "0" + dia;
				} else {
					ndia = "" + dia;
				}
				String nmes = "";
				if (mes < 10) {
					nmes = "0" + mes;
				} else {
					nmes = "" + mes;
				}
				String fecha = nmes + "-" + ndia + "-" + año;
				insert += "'" + fecha + "', ";
				
				double s = Math.random();
				String sex = "'man', ";
				if (s >= 0.5) {
					sex = "'woman', ";
				}
				insert += sex;
			}
			
		}
		

	}

	private static int diaGenerator(int mes, int año) {
		int dias=-1;
        switch(mes){
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                dias=31;
               break;
            case 4:
            case 6:
            case 9:
            case 11:
                dias=30;
               break;
            case 2:
 
                if(new GregorianCalendar().isLeapYear(año)){
                    dias=29;
                }else{
                    dias=28;
                }
                break;
 
        }
 
    return dias;
	}



}
