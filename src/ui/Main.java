package ui;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Main {

	private static final String INPUT = null;
	public ArrayList<Integer> codEmpleado;
	public int codDep;
	public int codProject;
	public String[] firstName;
	public String[] lastName;
	private static String[] departamentos;
	private static String[] posiciones;
	private static String[] projects;
	private static BufferedReader br;

	public static void main(String[] args) throws FileNotFoundException {
		
		departamentos = new String[] {"Calidad", "Administracion", "Inventario", 
				"Sistemas de informacion", "Expansion", "Logistica"};
		posiciones = new String[] {"Gerente", "Ejecutivo", "Secretario", "Aprendiz",
				"Colaborador", "Asistente", "Coordinador", "Contador", "Ingeniero"};
		projects = new String[] {"omega", "beta", "alfa", "xilium", "Juliom", "X project"};
		
		br = new BufferedReader(new FileReader(INPUT));
		BufferedWriter bwriter = new BufferedWriter(new OutputStreamWriter(System.out));
		Scanner sc = new Scanner(System.in);
		System.out.println("Cuantas Empleados va a insertar");
		int empleados =  sc.nextInt();
		System.out.println("Cuantas Proyectos va a insertar");
		int proj =  sc.nextInt();
		if (empleados < 20) {
			System.out.println("Minimo debe generar 20 empleados");
		} else {
			for (int i = 0; i < empleados; i++) {
				
				
				
			}
			
		}
		

	}

	private static void generadorCodigos(String tipo) {
		switch (tipo) {
		case "Empleado": 
			
		break;
		case "Department":
			
		break;
		case "project":
		
		break;
		
		default:
			throw new IllegalArgumentException("Unexpected value: " + key);
		}
		
	}

}
