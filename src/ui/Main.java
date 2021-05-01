package ui;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class Main {

	private static final String INPUT = "data/MOCK_DATA.csv";
	private static final String OUTPUT = "data/Inserts.sql";
	public  ArrayList<String[]> deps;
	public  ArrayList<String[]> emps;
	public  ArrayList<String[]> pros;
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
		projects = new String[] {"omega", "beta", "alfa", "xilium", "Juliom", "X project",
				"Alcanzando el cambio", "polo a tierra", "una mano amiga", "estar bien es ser consciente",
				"un muno para transformar", "por un mundo mejor"};

		deps = new ArrayList<String[]>();
		emps = new ArrayList<String[]>();
		pros = new ArrayList<String[]>();
		br = new BufferedReader(new FileReader(INPUT));
		bw = new BufferedWriter(new FileWriter(OUTPUT));
		
		String ins = "";
		for (int i = 0; i < departamentos.length; i++) {
			ins = "\nINSERT INTO DEPARTMENT VALUES(";
			ins += i + ", ";
			ins += "'" + departamentos[i] +"', ";
			ins += "NULL);";
			//System.out.println(ins);
			bw.write(ins);
			
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
		br.close();
		
		if (empleados < 20) {
			System.out.println("Minimo debe generar 20 empleados");
		} else {
			String insert = "";
			String updates = "";
			boolean jefesLlenos = false;
			for (int i = 0; i < empleados; i++) {
				String e[] = new String[8];
				
				insert = "\nINSERT INTO EMPLOYEE VALUES(";
				
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
								updates += "\nUPDATE DEPARTMENT\n"
										+ "SET MNG_EMP_NO=" + e[0] + "\n"
												+ "WHERE DEPT_NO =" + deps.get(j)[0] + "\n";
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
					int po = (int) Math.floor(Math.random() * (posiciones.length - 1) + 1);
					pos = posiciones[po];
				}
				insert += "'" + pos + "', ";
				e[6] = pos;
				
				int cualdepa= -1;
				//String depa = "";
				if(depart != -1) {
					//depa = departamentos[depart];
					cualdepa = depart;
				} else {
					int dto = (int) Math.floor(Math.random() * (departamentos.length - 1));
					//depa = departamentos[dto];
					cualdepa = dto;
				}
				insert += cualdepa + ");";
				e[7] = cualdepa + "";
				//System.out.println(insert);
				emps.add(e);
				bw.write(insert);
			}
			//System.out.println(updates);
		
			bw.write(updates);
			
			String insp = "";
			int contador = 1;
			for (int i = 0; i < projects.length; i++) {
				insp = "\nINSERT INTO PROJECT VALUES(";
				insp += (i) + ", ";
				insp += "'" + projects[i] +"', ";
				if (i == 2*contador) {
					contador++;
				}
				//int po = (int) Math.floor(Math.random() * (departamentos.length - 1));
				insp += contador +");";
				//System.out.println(insp);
				bw.write(insp);
				
				String[] d1 = new String[3];
				d1[0] = (i) + "";
				d1[1] = projects[i];
				d1[2] = contador + "";
				pros.add(d1);
			}
			
			String works = "";
			int trabajos = (int) Math.floor(Math.random() * (emps.size() - ((int) Math.floor(Math.random() * (emps.size()*1/4))) ));
			for (int i = 0; i < trabajos; i++) {
				works = "\nINSERT INTO WORKSON(";
				int cualEmpleado = ((int) Math.floor(Math.random() * (emps.size())));
				String[] emplea = emps.get(cualEmpleado);
				String empNo = emplea[0];
				works += empNo + ", ";
				String projNo = "";
				String deptNo = emplea[7];
				double s = Math.random();
				boolean encontro = false;
				if (s >= 0.5) {
					for (int j = 0; j < projects.length && !encontro; j += 2) {
						if (pros.get(j)[2].equals(deptNo)) {
							projNo = pros.get(j)[0];
							encontro = true;
						}
					}
				} else {
					for (int j = 1; j < projects.length && !encontro; j += 2) {
						if (pros.get(j)[2].equals(deptNo)) {
							projNo = pros.get(j)[0];
							encontro = true;
						}
					}
				}
				if (projNo.equals("")) {
					continue;
				}
				
				works += projNo + ", ";
				int mes = (int) Math.floor(Math.random() * (13 - 1) + 1);
				int año = (int) Math.floor(Math.random() * (2020 - 2015) + 2015);
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
				works += "'" + fecha + "', ";
				int horas = (int) Math.floor(Math.random() * (9 - 1) + 1);
				works += horas + ");";
				//System.out.println(works);
				bw.write(works);
			}
			bw.close();
			
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
