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
			
			this.botones= new JButton[100];
			this.codigos = new JLabel[100];
			for (int i = 0; i < mc.selectIdFromLevel(1000).size(); i++) {
				this.botones[i]=new JButton(mc.selectNameFromLevel(1000).get(i));
				this.codigos[i]= new JLabel(mc.selectIdFromLevel(1000).get(i));
				this.panel.add(this.botones[i]);
				this.panel.add(this.codigos[i]);
				this.botones[i].addActionListener(this);
			}
			/*label = new JLabel("This is a label!");

			button = new JButton();
			button.setText("Press me");
			
			panel.add(label);
			panel.add(button);
			
			area = new JTextArea(10,20);
			panel.add(area);
			
			botones=new JButton[10];
			*/
			/*for (int i = 0; i < mc.selectAllData().size(); i++) {
				this.botones[i]=new JButton(""+(i+1));
				panel.add(this.botones[i]);
			}
			
			this.mostrar();
			System.out.println(mc.selectAllNiveles());
			*/
			this.add(panel);
	     
	     
	}
	
	
	/*public void mostrar(){
		try {
			for (int i = 0; i < mc.selectSucesoresFromId(2002).size(); i++) {
				this.area.setText(this.area.getText()+"\n"+(mc.selectSucesoresFromId(2002).get(i).toString()+" "));
				//System.out.println(mc.selectAllDataFromId(1000).get(i).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
*/
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		System.out.println("hola");
	}
}
