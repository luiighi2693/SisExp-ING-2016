//package view;
//
//import java.awt.FlowLayout;
//import java.awt.event.ActionEvent;
//import java.awt.event.ActionListener;
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.sql.SQLException;
//import java.util.Scanner;
//
//import javax.swing.JButton;
//import javax.swing.JFrame;
//import javax.swing.JLabel;
//import javax.swing.JPanel;
//import javax.swing.JTextArea;
//
//import data.DataConnection;
//
//public class ad extends JFrame implements ActionListener{
//
//	static int op;
//	private static DataConnection mc = DataConnection.getInstance();
//
//	public JPanel panel;
//	public JButton botones[];
//	public JLabel label;
//	public JButton button;
//	public JTextArea area;
//	public int contBotonesActual;
//	public JButton atras;
//
//	public ad() throws SQLException{
//		super("sistema experto");
//		this.inicializarComponentes();
//		this.inicializarFrame();
//	}
//
//	public static void main(String[] args) throws Exception {
//		ad a = new ad();
//	}
//
//	public void inicializarFrame(){
//
//		setVisible(true);
//		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//finaliza el programa cuando se da click en la X
//		setSize(500,350);//configurando tama�o de la ventana
//		setVisible(true);//configurando visualizaci�n de la ventana
//	}
//
//	public void inicializarComponentes() throws SQLException{
//		panel = new JPanel();
//		panel.setLayout(new FlowLayout());
//		this.contBotonesActual=0;
//		this.botones= new JButton[100]; //inicio
//		for (int i = 0; i < mc.selectIdFromLevel(1000).size(); i++) {
//			this.botones[i]=new JButton(mc.selectNameFromLevel(1000).get(i));
//			this.botones[i].setName(mc.selectIdFromLevel(1000).get(i));
//			this.panel.add(this.botones[i]);
//			this.botones[i].addActionListener(this);
//			this.contBotonesActual++;
//		}
//		this.atras= new JButton("atras");
//		this.atras.setVisible(false);
//		this.atras.addActionListener(this);
//		this.panel.add(this.atras);
//
//		this.add(panel);
//	}
//
//	public void eliminarBotones(){
//		for (int i = 0; i < this.contBotonesActual; i++) {
//			botones[i].removeActionListener(this);
//			botones[i].setVisible(false);
//			panel.remove(botones[i]);
//		}
//		this.contBotonesActual=0;
//	}
//
//	@Override
//	public void actionPerformed(ActionEvent e) {
//		String aux, aux2, aux3;
//		if(e.getSource()==atras){
//			aux= botones[0].getName(); //id
//			eliminarBotones();
//			try {
//				aux2= mc.selectAntecesorFromId(Integer.parseInt(aux)).get(0);//id antecesor
//				if(Integer.parseInt(aux2)<2000){//primer nivel
//					for (int i = 0; i < mc.selectIdFromLevel(1000).size(); i++) {
//						this.botones[i]=new JButton(mc.selectNameFromLevel(1000).get(i));
//						this.botones[i].setName(mc.selectIdFromLevel(1000).get(i));
//						this.panel.add(this.botones[i]);
//						this.botones[i].addActionListener(this);
//						this.contBotonesActual++;
//					}
//				}
//				else { //pedir nuevamente el id antecesor
//					aux= mc.selectAntecesorFromId(Integer.parseInt(aux2)).get(0);//id antecesor2
//					construirBotones(aux);
//				}
//			} catch (NumberFormatException e1) {
//				e1.printStackTrace();
//			} catch (SQLException e1) {
//				e1.printStackTrace();
//			}
//		}
//		else{
//			try {
//				aux= ((JButton)(e.getSource())).getName(); //id
//				eliminarBotones();
//				construirBotones(aux);
//
//			} catch (SQLException e1) {
//				e1.printStackTrace();
//			}
//		}
//		System.out.println(contBotonesActual);
//		System.out.println("\n\n");
//	}
//
//	private void construirBotones(String aux) throws NumberFormatException, SQLException {
//		String aux2, aux3;
//		for (int i = 0; i < mc.selectSucesoresFromId(Integer.parseInt(aux)).size(); i++) {
//			aux2=mc.selectSucesoresFromId(Integer.parseInt(aux)).get(i); //id sucesor
//			System.out.println(aux2);
//			aux3= mc.selectNombreFromId(Integer.parseInt(aux2)).get(0); //nombre
//			//aux3= (mc.selectNombreFromId(Integer.parseInt(mc.selectSucesoresFromId(Integer.parseInt(aux2)).get(i).toString()))).get(i).toString();
//			botones[i]= new JButton(aux3);
//			botones[i].setName(aux2);
//			this.panel.add(botones[i]);
//			botones[i].addActionListener(this);
//			botones[i].setVisible(true);
//			this.contBotonesActual++;
//		}
//
//		if((Integer.parseInt(mc.selectNivelFromId(Integer.parseInt(botones[0].getName())).get(0)))>1999){
//			atras.setVisible(true);
//		}
//		else {
//			atras.setVisible(false);
//		}
//	}
//}
//