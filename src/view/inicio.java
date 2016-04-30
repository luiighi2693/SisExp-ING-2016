package view;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * Created by luisc on 29/4/2016.
 */
public class inicio extends JFrame implements ActionListener{
    public JLabel tituloLbl, nombreProyectoLbl, numeroCasoLlb, ingenieroEspecialistaLbl, cedulaLbl, fechaLbl;
    public JButton nuevaInspeccionBtn, atrasDatosInspeccionBtn, empezarInspeccionBtn;
    public JTextField nombreProyectoTxF, numeroCasoTxF, ingenieroEspecialistaTxF, cedulaTxF, fechaTxF;
    public JMenuBar menuBar;
    public JMenu menu;
    public JMenuItem abrir;


    public inicio(){
        super();
        configurarVentana();
        instancias();
        inicializarComponentes();
        repaint();
    }

    public void configurarVentana(){
        this.setTitle("inicio");
        this.setSize(700,550);
        this.setLocationRelativeTo(null);
        this.setLayout(null);
        this.setResizable(false);
        this.setVisible(true);

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void instancias(){
        tituloLbl = new JLabel();
        nombreProyectoLbl = new JLabel();
        numeroCasoLlb = new JLabel();
        ingenieroEspecialistaLbl = new JLabel();
        cedulaLbl = new JLabel();
        fechaLbl = new JLabel();
        nuevaInspeccionBtn = new JButton();
        atrasDatosInspeccionBtn = new JButton();
        empezarInspeccionBtn = new JButton();

        menuBar = new JMenuBar();
        this.setJMenuBar(menuBar);
        menu = new JMenu("Opciones");
        menuBar.add(menu);
        abrir = new JMenuItem("abrir...");
        abrir.addActionListener(this);
        menu.add(abrir);

        nombreProyectoTxF = new JTextField();
        numeroCasoTxF = new JTextField();
        ingenieroEspecialistaTxF = new JTextField();
        cedulaTxF = new JTextField();
        fechaTxF = new JTextField();
    }

    public void inicializarComponentes(){
        tituloLbl.setText("Bienvenidos al sistema de .....");
        tituloLbl.setBounds(250,100,250,25);

        nuevaInspeccionBtn.setText("Nueva Inspeccion");
        nuevaInspeccionBtn.setBounds(500,450,150,30);
        nuevaInspeccionBtn.addActionListener(this);

        atrasDatosInspeccionBtn.setText("atras");
        atrasDatosInspeccionBtn.setBounds(50,450,150,30);
        atrasDatosInspeccionBtn.addActionListener(this);

        empezarInspeccionBtn.setText("empezar");
        empezarInspeccionBtn.setBounds(500,450,150,30);
        empezarInspeccionBtn.addActionListener(this);

        nombreProyectoLbl.setText("Nombre de Proyecto:");
        nombreProyectoLbl.setBounds(30,90,150,25);

        nombreProyectoTxF.setBounds(170,90,300,25);

        numeroCasoLlb.setText("N°. Caso:");
        numeroCasoLlb.setBounds(500,90,150,25);

        numeroCasoTxF.setBounds(570,90,100,25);

        ingenieroEspecialistaLbl.setText("Ing. Especialista:");
        ingenieroEspecialistaLbl.setBounds(30,170,150,25);

        ingenieroEspecialistaTxF.setBounds(150,170,200,25);

        cedulaLbl.setText("CIV:");
        cedulaLbl.setBounds(370,170,50,25);

        cedulaTxF.setBounds(400,170,100,25);

        fechaLbl.setText("Fecha:");
        fechaLbl.setBounds(520,170,50,25);

        fechaTxF.setBounds(570,170,80,25);

        this.add(tituloLbl);
        this.add(nuevaInspeccionBtn);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()==abrir){
            System.out.println("presionaste abrir");
        }

        if (e.getSource()== nuevaInspeccionBtn){
            menu.remove(abrir);
            remove(nuevaInspeccionBtn);
            add(atrasDatosInspeccionBtn);
            add(empezarInspeccionBtn);
            add(nombreProyectoLbl);
            add(nombreProyectoTxF);
            add(numeroCasoLlb);
            add(numeroCasoTxF);
            add(ingenieroEspecialistaLbl);
            add(ingenieroEspecialistaTxF);
            add(cedulaLbl);
            add(cedulaTxF);
            add(fechaLbl);
            add(fechaTxF);

            tituloLbl.setText("Datos Generales de la Inspección");
            tituloLbl.setBounds(250,30,250,25);
            repaint();
        }

        if (e.getSource()== atrasDatosInspeccionBtn){
            menu.add(abrir);
            remove(atrasDatosInspeccionBtn);
            remove(empezarInspeccionBtn);
            remove(nombreProyectoLbl);
            remove(nombreProyectoTxF);
            remove(numeroCasoLlb);
            remove(numeroCasoTxF);
            remove(ingenieroEspecialistaLbl);
            remove(ingenieroEspecialistaTxF);
            remove(cedulaLbl);
            remove(cedulaTxF);
            remove(fechaLbl);
            remove(fechaTxF);
            add(nuevaInspeccionBtn);

            tituloLbl.setText("Bienvenidos al sistema de .....");
            tituloLbl.setBounds(250,100,250,25);
            repaint();
        }
    }

    public static void main(String Args[]){
        new inicio();
    }
}
