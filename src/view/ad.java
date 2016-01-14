package view;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.Scanner;

import data.DataConnection;

public class ad {
	
	static int op;
	private static DataConnection mc = DataConnection.getInstance();
	
	public static void main(String[] args) throws Exception {
		menu();
		op=readInt();
		exmenu(op);
	}

	private static String readString() throws Exception {
		BufferedReader br = new BufferedReader(
		new InputStreamReader(System.in));
		return br.readLine();
	}
	
	private static int readInt() {
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
		}
	
	public static void menu(){
		System.out.println("Seleccioneu una opció del menú:");
		System.out.println("1. Añadir nuevo producto");
		System.out.println("2. Visualizar productos");
		System.out.println("-1. Sortir");
	}
	
	private static void exmenu(int op2) throws Exception {
		String nom;
		String cat;
		boolean ok=false;
		
		switch (op2) {
		case 1:
				System.out.println("Nom del producte");
				nom=readString();
				System.out.println("Categoria del producte");
				cat=readString();
				addProd(nom,cat);
				System.out.println("producte afegit");
			break;
		case 2:
				mostraProds();
			break;
		case -1:
			break;
		default:
			menu();
			op=readInt();
			exmenu(op);
		break;
		}
		if(op!=-1){
			System.out.println("Prem intro per a continuar");
			String nada=readString();//no se usa, es para pausar
									 //por si ha de salir otra vez el menu para hacer otra accion
			menu();
			op=readInt();
			exmenu(op);
		}
	}
	
	static void addProd(String nom,String cat){
		try {
			mc.insertaEsport(nom,cat);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	static void mostraProds(){
		try {
			for (int i = 0; i < mc.retornaEsports().size(); i++) {
				System.out.println(mc.retornaEsports().get(i).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
