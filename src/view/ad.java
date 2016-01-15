package view;

import java.awt.FlowLayout;
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

public class ad extends JFrame{
	
	static int op;
	private static DataConnection mc = DataConnection.getInstance();
	
	public JPanel panel;
	public JLabel label;
	public JButton button;
	public JTextArea area;
	public JButton botones[];
	
	public ad() throws SQLException{
		super("sistema experto");
        setVisible(true);
        
        panel = new JPanel();
		panel.setLayout(new FlowLayout());

		label = new JLabel("This is a label!");

		button = new JButton();
		button.setText("Press me");
		
		panel.add(label);
		panel.add(button);
		
		area = new JTextArea(10,20);
		panel.add(area);
		
		botones=new JButton[10];
		
		for (int i = 0; i < mc.retornaEsports().size(); i++) {
			this.botones[i]=new JButton(""+(i+1));
			panel.add(this.botones[i]);
		}
		
		this.mostrar();
		
		this.add(panel);
		 setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//finaliza el programa cuando se da click en la X
	     setSize(400,400);//configurando tamaño de la ventana
	     setVisible(true);//configurando visualización de la ventana     
	}
	
	public static void main(String[] args) throws Exception {
		ad a = new ad();
	}

	public void mostrar(){
		try {
			System.out.println("nombre\t\tnivel\tid\tdescripcion");
			for (int i = 0; i < mc.retornaEsports().size(); i++) {
				this.area.setText(this.area.getText()+"\n"+(mc.retornaEsports().get(i).toString()+" "));
				System.out.println(mc.retornaEsports().get(i).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
