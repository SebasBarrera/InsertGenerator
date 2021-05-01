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

	private static final String INPUT = "data/MOCK_DATA.csv";
	private static final OutputStream OUTPUT = null;
	public  ArrayList<String[]> deps;
	public  ArrayList<String[]> emps;
	public  String[] firstName;
	public  String[] lastName;
	private  String[] departamentos;
	private  String[] posiciones;
	private  String[] projects;
	private  BufferedReader br;
	private  BufferedWriter bw;
	private  Scanner sc;

	public static void main(String[] args) throws IOException {
		Main m = new Main();
		m.empieza();
	}

	private void empieza() throws IOException {
		sc = new Scanner(System.in);
		System.out.println("Cuantas Empleados va a insertar");
		int empleados =  sc.nextInt();
		
		departamentos = new String[] {"Calidad", "Administracion", "Inventario", 
				"Sistemas de informacion", "Expansion", "Logistica"};
		posiciones = new String[] {"Jefe de Departamento", "Ejecutivo", "Secretario", "Aprendiz",
				"Colaborador", "Asistente", "Coordinador", "Contador", "Ingeniero"};
		projects = new String[] {"omega", "beta", "alfa", "xilium", "Juliom", "X project"};
		
		deps = new ArrayList<String[]>();
		emps = new ArrayList<String[]>();
		br = new BufferedReader(new FileReader(INPUT));
		bw = new BufferedWriter(new OutputStreamWriter(OUTPUT));
		
		
		String ins = "";
		for (int i = 0; i < departamentos.length; i++) {
			ins = "INSERT INTO DEPARTMENT VALUES(";
			ins += i + ", ";
			ins += "'" + departamentos[i] +"', ";
			ins += "NULL);";
			System.out.println(ins);
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
			line = br.readLine();
		}
		
		
		if (empleados < 20) {
			System.out.println("Minimo debe generar 20 empleados");
		} else {
			String insert = "";
			String updates = "";
			boolean jefesLlenos = false;
			for (int i = 0; i < empleados; i++) {
				String e[] = new String[8];
				
				insert = "INSERT INTO EMPLOYEE VALUES(";
				
				insert += i + ", ";
				e[0] = i + "";
				
				int nom = (int) Math.floor(Math.random() * 498);
				String nombre = firstName[nom];
				insert += "'" + nombre + "', ";
				e[1] = nombre;
				
				int ape = (int) Math.floor(Math.random() * 498);
				String apellido = lastName[ape];
				insert += "'" + apellido + "', ";
				e[2] = apellido;
				
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
				e[3] = direccion;
				
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
				e[4] = fecha;
				
				double s = Math.random();
				String sex = "Hombre";
				if (s >= 0.5) {
					sex = "Mujer";
				}
				insert += "'" + sex + "', ";
				e[5] = sex;
				
				int posicion = -1;
				int depart = -1;
				double pararParaAvanzar = Math.random();
				if(pararParaAvanzar < 0.333333) {
					if(!jefesLlenos) {
						boolean agrego = false;
						for(int j = 0; j < deps.size() && !agrego; j++) {
							if(deps.get(j)[2].equals("")) {
								updates += "UPDATE DEPARTMENT\n"
										+ "SET MNG_EMP_NO=" + e[0] + "\n"
												+ "WHERE DEPT_NO =" + deps.get(j)[0] + "\n\n";
								posicion = 0;
								agrego = true;
								depart = Integer.parseInt(deps.get(j)[0]);
								deps.get(j)[2] = e[0];
							}
						}
						if (depart == deps.size() - 1) {
							jefesLlenos = true;
						}
					}
				}
				String pos = "";
				if(posicion == 0) {
					pos = posiciones[0];
				} else {
					int po = (int) Math.floor(Math.random() * (9 - 1) + 1);
					pos = posiciones[po];
				}
				insert += "'" + pos + "', ";
				e[6] = pos;
				
				String depa = "";
				if(depart != -1) {
					depa = departamentos[depart];
				} else {
					int dto = (int) Math.floor(Math.random() * (7 - 1));
					depa = departamentos[dto];
				}
				insert += "'" + depa + "');";
				System.out.println(insert + "\n");
				emps.add(e);
				//TODO agregar insert
			}
			System.out.println(updates);
			
			//TODO agregar updates
			
			
		}
		
		
	}

	private int diaGenerator(int mes, int año) {
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
