package view;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.Scanner;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import data.DataConnection;

public class ad extends JFrame implements ActionListener{
	
	static int op;
	private static DataConnection mc = DataConnection.getInstance();
	
	public JPanel panel;
	public JButton botones[];
	public JLabel codigos[];
	public JLabel label;
	public JButton button;
	public JTextArea area;
	public int contBotonesActual;
	
	public ad() throws SQLException{
		super("sistema experto");
		this.inicializarComponentes();
		this.inicializarFrame();
	}
	
	public static void main(String[] args) throws Exception {
		ad a = new ad();
	}

	public void inicializarFrame(){
		
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//finaliza el programa cuando se da click en la X
		setSize(400,400);//configurando tamaño de la ventana
		setVisible(true);//configurando visualización de la ventana   
	}
	
	public void inicializarComponentes() throws SQLException{
		panel = new JPanel();
		panel.setLayout(new FlowLayout());
		this.contBotonesActual=0;
		this.botones= new JButton[100]; //inicio
		this.codigos = new JLabel[100];
		for (int i = 0; i < mc.selectIdFromLevel(1000).size(); i++) {
			this.botones[i]=new JButton(mc.selectNameFromLevel(1000).get(i));
			this.codigos[i]= new JLabel(mc.selectIdFromLevel(1000).get(i));
			this.panel.add(this.botones[i]);
			this.panel.add(this.codigos[i]);
			this.botones[i].addActionListener(this);
			this.contBotonesActual++;
		}
		
		System.out.println(this.contBotonesActual);
		/*
			this.mostrar();
			System.out.println(mc.selectAllNiveles());
		 */
		this.add(panel);
	}
	/*public void mostrar(){
		try {
			for (int i = 0; i < mc.selectSucesoresFromId(2002).size(); i++) {
				//System.out.println(mc.selectAllDataFromId(1000).get(i).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
*/
	@Override
	public void actionPerformed(ActionEvent e) {
		
		try {
			String aux= "'"+((JButton)(e.getSource())).getText()+"'";
			String aux2= mc.selectIdFromNombre(aux).get(0);
			for (int i = 0; i < mc.selectSucesoresFromId(Integer.parseInt(aux2)).size(); i++) {
				System.out.println(mc.selectSucesoresFromId(Integer.parseInt(aux2)).get(i).toString());
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		((JButton)(e.getSource())).removeActionListener(this);
		((JButton)(e.getSource())).setVisible(false);
		remove(((JButton)(e.getSource())));
	}
}
