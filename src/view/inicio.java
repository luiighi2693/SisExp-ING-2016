package view;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

public class inicio extends JFrame implements ActionListener{
    public JLabel tituloLbl, nombreProyectoLbl, numeroCasoLlb, ingenieroEspecialistaLbl, cedulaLbl, fechaLbl, elementoInicialLbl, tipoAmbienteLbl;
    public JButton nuevaInspeccionBtn, atrasDatosInspeccionBtn, empezarInspeccionBtn, siguienteEtapa1Btn;
    public JTextField nombreProyectoTxF, numeroCasoTxF, ingenieroEspecialistaTxF, cedulaTxF, fechaTxF;
    public JMenuBar menuBar;
    public JMenu menu;
    public JMenuItem abrir, guardar;
    public JCheckBox vigaCbx, losaCbx, muroCbx, columnaCbx, mamposteriaCbx, agresivoCbx, noAgresivoCbx;

    private static dataBaseConnection mc = dataBaseConnection.getInstance();

    public inicio() throws SQLException {
        super();
        configurarVentana();
        instancias();
        inicializarComponentes();

        mostrarInicio();
        this.setVisible(true);
    }

    public void configurarVentana(){
        this.setTitle("inicio");
        this.setSize(1024,768);
        this.setLocationRelativeTo(null);
        this.setLayout(null);
        this.setResizable(false);

        abrir = new JMenuItem("abrir...");
        abrir.addActionListener(this);
        guardar = new JMenuItem("guardar");
        guardar.addActionListener(this);
        menu = new JMenu("Opciones");
        menu.add(abrir);
        menuBar = new JMenuBar();
        menuBar.add(menu);
        this.setJMenuBar(menuBar);

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
        nombreProyectoTxF = new JTextField();
        numeroCasoTxF = new JTextField();
        ingenieroEspecialistaTxF = new JTextField();
        cedulaTxF = new JTextField();
        fechaTxF = new JTextField();

        vigaCbx = new JCheckBox("Viga");
        columnaCbx = new JCheckBox("Columna");
        mamposteriaCbx = new JCheckBox("Mamposteria");
        losaCbx = new JCheckBox("Losa");
        muroCbx = new JCheckBox("Muro");
        agresivoCbx = new JCheckBox("Agresivo");
        noAgresivoCbx = new JCheckBox("No Agresivo");

        elementoInicialLbl = new JLabel("Elemento:");
        tipoAmbienteLbl = new JLabel("Tipo de Ambiente");

        siguienteEtapa1Btn= new JButton();
    }

    public void inicializarComponentes() throws SQLException {
        tituloLbl.setText("DOCTOR STRUCTURE V1.0");
        tituloLbl.setBounds(400,100,250,25);

        nuevaInspeccionBtn.setText("Nueva Inspeccion");
        nuevaInspeccionBtn.setBounds(850,650,150,30);
        nuevaInspeccionBtn.addActionListener(this);

        atrasDatosInspeccionBtn.setText("atras");
        atrasDatosInspeccionBtn.setBounds(50,650,150,30);
        atrasDatosInspeccionBtn.addActionListener(this);

        empezarInspeccionBtn.setText("empezar");
        empezarInspeccionBtn.setBounds(850,650,150,30);
        empezarInspeccionBtn.addActionListener(this);

        nombreProyectoLbl.setText("Nombre de Proyecto:");
        nombreProyectoLbl.setBounds(180,120,150,25);

        nombreProyectoTxF.setBounds(320,120,300,25);

        numeroCasoLlb.setText("N°. Caso:");
        numeroCasoLlb.setBounds(650,120,150,25);

        numeroCasoTxF.setBounds(720,120,100,25);

        ingenieroEspecialistaLbl.setText("Ing. Especialista:");
        ingenieroEspecialistaLbl.setBounds(180,200,150,25);

        ingenieroEspecialistaTxF.setBounds(300,200,200,25);

        cedulaLbl.setText("CIV:");
        cedulaLbl.setBounds(520,200,50,25);

        cedulaTxF.setBounds(550,200,100,25);

        fechaLbl.setText("Fecha:");
        fechaLbl.setBounds(670,200,50,25);

        fechaTxF.setBounds(720,200,80,25);

        elementoInicialLbl.setBounds(300,150,150,25);

        vigaCbx.setBounds(350,175,150,25);
        losaCbx.setBounds(350,200,150,25);
        columnaCbx.setBounds(350,225,150,25);
        mamposteriaCbx.setBounds(350,250,150,25);
        muroCbx.setBounds(350,275,150,25);

        tipoAmbienteLbl.setBounds(300,325,150,25);

        agresivoCbx.setBounds(350,350,150,25);
        noAgresivoCbx.setBounds(350,375,150,25);

        siguienteEtapa1Btn.setText("Siguiente");
        siguienteEtapa1Btn.setBounds(850,650,150,30);
        siguienteEtapa1Btn.addActionListener(this);

        this.add(tituloLbl);
        this.add(nuevaInspeccionBtn);

//        for (int i=0; i< mc.selectBaseDatosTratamientos().size(); i++){
//            System.out.println(mc.selectBaseDatosTratamientos().get(i));
//        }
    }

    public void mostrarInicio(){
        nuevaInspeccionBtn.doClick();
        atrasDatosInspeccionBtn.doClick();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()==abrir){
            System.out.println("presionaste abrir");
        }

        if (e.getSource()== nuevaInspeccionBtn){
            menu.add(abrir);
            menu.remove(guardar);
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
            tituloLbl.setBounds(400,50,250,25);
            repaint();
        }

        if (e.getSource()== atrasDatosInspeccionBtn){
            menu.remove(abrir);
            menu.remove(guardar);
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

            tituloLbl.setText("DOCTOR STRUCTURE V1.0");
            tituloLbl.setBounds(400,100,250,25);
            repaint();
        }

        if(e.getSource()==empezarInspeccionBtn){
            menu.remove(abrir);
            menu.add(guardar);
//            remove(atrasDatosInspeccionBtn);
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

            tituloLbl.setText("Etapa 0");
            add(elementoInicialLbl);
            add(vigaCbx);
            add(losaCbx);
            add(columnaCbx);
            add(mamposteriaCbx);
            add(muroCbx);
            add(tipoAmbienteLbl);
            add(agresivoCbx);
            add(noAgresivoCbx);
            add(siguienteEtapa1Btn);
            repaint();
        }

        if(e.getSource()==siguienteEtapa1Btn){
            System.out.println(vigaCbx.isSelected());
            System.out.println(losaCbx.isSelected());
            System.out.println(columnaCbx.isSelected());
            System.out.println(mamposteriaCbx.isSelected());
            System.out.println(muroCbx.isSelected());
        }
    }

    public static void main(String Args[]) throws SQLException {
        new inicio();
    }
}
