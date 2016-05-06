package view;

import javax.swing.*;
import javax.swing.border.BevelBorder;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.Objects;

public class inicio extends JFrame implements ActionListener{
    public JLabel tituloLbl, nombreProyectoLbl, numeroCasoLlb, ingenieroEspecialistaLbl, cedulaLbl, fechaLbl, elementoInicialLbl, tipoAmbienteLbl;
    public JButton nuevaInspeccionBtn, atrasDatosInspeccionBtn, empezarInspeccionBtn, siguienteEtapa1Btn;
    public JTextField nombreProyectoTxF, numeroCasoTxF, ingenieroEspecialistaTxF, cedulaTxF, fechaTxF;
    public JMenuBar menuBar;
    public JMenu menu;
    public JMenuItem abrir, guardar;
    public JCheckBox vigaCbx, losaCbx, muroCbx, columnaCbx, mamposteriaCbx, agresivoCbx, noAgresivoCbx;
    public JCheckBox respuestasFisurasColumnas1Cxb [], respuestasFisurasColumnas2Cxb [], respuestasFisurasLosas1Cxb [],
            respuestasFisurasLosas2Cxb [], respuestasFisurasMamposteria1Cxb [], respuestasFisurasMamposteria2Cxb [],
            respuestasFisurasMuros1Cxb [], respuestasFisurasMuros2Cxb [], respuestasFisurasVigas1Cxb [],
            respuestasFisurasVigas2Cxb [], respuestasManifestacionesFisicas1Cxb [], respuestasManifestacionesFisicas2Cxb [],
            respuestasManifestacionesQuimicas1Cxb [], respuestasManifestacionesQuimicas2Cxb [];
    public String respuestasFisurasColumnas1Str [], respuestasFisurasColumnas2Str [], respuestasFisurasLosas1Str [],
            respuestasFisurasLosas2Str [], respuestasFisurasMamposteria1Str [], respuestasFisurasMamposteria2Str [],
            respuestasFisurasMuros1Str [], respuestasFisurasMuros2Str [], respuestasFisurasVigas1Str [],
            respuestasFisurasVigas2Str [], respuestasManifestacionesFisicas1Str [], respuestasManifestacionesFisicas2Str [],
            respuestasManifestacionesQuimicas1Str [], respuestasManifestacionesQuimicas2Str [];
    public int tamRespuestasFisurasColumnas1, tamRespuestasFisurasColumnas2, tamRespuestasFisurasLosas1,
            tamRespuestasFisurasLosas2, tamRespuestasFisurasMamposteria1, tamRespuestasFisurasMamposteria2,
            tamRespuestasFisurasMuros1, tamRespuestasFisurasMuros2, tamRespuestasFisurasVigas1,
            tamRespuestasFisurasVigas2, tamRespuestasManifestacionesFisicas1, tamRespuestasManifestacionesFisicas2,
            tamRespuestasManifestacionesQuimicas1, tamRespuestasManifestacionesQuimicas2;
    public JPanel panel;
    public JScrollPane scroller;

    public String elementoSeleccionado, ambienteSeleccionado;
    public int etapaActual;

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
        tituloLbl = new JLabel("DOCTOR STRUCTURE V1.0");
        nombreProyectoLbl = new JLabel("Nombre de Proyecto:");
        numeroCasoLlb = new JLabel("N°. Caso:");
        ingenieroEspecialistaLbl = new JLabel("Ing. Especialista:");
        cedulaLbl = new JLabel("CIV:");
        fechaLbl = new JLabel("Fecha:");
        nuevaInspeccionBtn = new JButton("Nueva Inspeccion");
        atrasDatosInspeccionBtn = new JButton("atras");
        empezarInspeccionBtn = new JButton("empezar");
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

        siguienteEtapa1Btn= new JButton("Siguiente");

        panel = new JPanel();
        scroller = new JScrollPane(panel);
    }

    public void inicializarComponentes() throws SQLException {
        tituloLbl.setBounds(400,100,250,25);

        nuevaInspeccionBtn.setBounds(850,650,150,30);
        nuevaInspeccionBtn.addActionListener(this);

        atrasDatosInspeccionBtn.setBounds(50,650,150,30);
        atrasDatosInspeccionBtn.addActionListener(this);

        empezarInspeccionBtn.setBounds(850,650,150,30);
        empezarInspeccionBtn.addActionListener(this);

        nombreProyectoLbl.setBounds(180,120,150,25);

        nombreProyectoTxF.setBounds(320,120,300,25);

        numeroCasoLlb.setBounds(650,120,150,25);

        numeroCasoTxF.setBounds(720,120,100,25);

        ingenieroEspecialistaLbl.setBounds(180,200,150,25);

        ingenieroEspecialistaTxF.setBounds(300,200,200,25);

        cedulaLbl.setBounds(520,200,50,25);

        cedulaTxF.setBounds(550,200,100,25);

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

        siguienteEtapa1Btn.setBounds(850,650,150,30);
        siguienteEtapa1Btn.addActionListener(this);

        panel.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
        panel.setBounds(300,200,600,400);
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));

        scroller.setBounds(225,200,600,400);
        scroller.setAutoscrolls(true);

        this.add(tituloLbl);
        this.add(nuevaInspeccionBtn);
    }

    public void mostrarInicio(){
        nuevaInspeccionBtn.doClick();
        atrasDatosInspeccionBtn.doClick();
    }

    public int contarElementos() throws SQLException {
        int cont=0;
        String [] elementos, respuestas;
        for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size(); i++) {
            elementos = mc.selectRespuestasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).get(i).split("/", 2);
            respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

            for (int j=0; j<respuestas.length; j++){
                cont++;
            }
        }
        return cont;
    }

    public void inicializarArreglos() throws SQLException {
        tamRespuestasFisurasColumnas1=0;
        tamRespuestasFisurasColumnas2=0;
        tamRespuestasFisurasLosas1=0;
        tamRespuestasFisurasLosas2=0;
        tamRespuestasFisurasMamposteria1=0;
        tamRespuestasFisurasMamposteria2=0;
        tamRespuestasFisurasMuros1=0;
        tamRespuestasFisurasMuros2=0;
        tamRespuestasFisurasVigas1=0;
        tamRespuestasFisurasVigas2=0;
        tamRespuestasManifestacionesFisicas1=0;
        tamRespuestasManifestacionesFisicas2=0;
        tamRespuestasManifestacionesQuimicas1=0;
        tamRespuestasManifestacionesQuimicas2=0;

        if(etapaActual==1){
            if(Objects.equals(elementoSeleccionado, "VIGAS")){
                respuestasFisurasVigas1Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                respuestasFisurasColumnas1Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                respuestasFisurasMamposteria1Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                respuestasFisurasLosas1Cxb = new JCheckBox[contarElementos()];
            }else{
                respuestasFisurasMuros1Cxb = new JCheckBox[contarElementos()];
            } 
        }else{
            if(Objects.equals(elementoSeleccionado, "VIGAS")){
                respuestasFisurasVigas2Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                respuestasFisurasColumnas2Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                respuestasFisurasMamposteria2Cxb = new JCheckBox[contarElementos()];
            }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                respuestasFisurasLosas2Cxb = new JCheckBox[contarElementos()];
            }else{
                respuestasFisurasMuros2Cxb = new JCheckBox[contarElementos()];
            }
        }
        System.out.print(contarElementos());
    }

    public void preguntasInPane(String tipo) throws SQLException {
        //determinar todas las respuestas de la etapa
        String [] elementos, respuestas;

//        contarElementos();

        for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size(); i++){
            elementos= mc.selectRespuestasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i).split("/",2);
            respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

            for (int j=0; j<respuestas.length; j++){
                if(etapaActual==1){
                    if(Objects.equals(elementoSeleccionado, "VIGAS")){
                        respuestasFisurasVigas1Cxb[tamRespuestasFisurasVigas1] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasVigas1++;
                    }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                        respuestasFisurasColumnas1Cxb[tamRespuestasFisurasColumnas1] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasColumnas1++;
                    }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                        respuestasFisurasMamposteria1Cxb [tamRespuestasFisurasMamposteria1] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasMamposteria1++;
                    }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                        respuestasFisurasLosas1Cxb[tamRespuestasFisurasLosas1] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasLosas1++;
                    }else{
                        respuestasFisurasMuros1Cxb[tamRespuestasFisurasMuros1] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasMuros1++;
                    }
                }else {
                    if (Objects.equals(elementoSeleccionado, "VIGAS")) {
                        respuestasFisurasVigas2Cxb[tamRespuestasFisurasVigas2] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasVigas2++;
                    } else if (Objects.equals(elementoSeleccionado, "COLUMNAS")) {
                        respuestasFisurasColumnas2Cxb[tamRespuestasFisurasColumnas2] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasColumnas2++;
                    } else if (Objects.equals(elementoSeleccionado, "MAMPOSTERIA")) {
                        respuestasFisurasMamposteria2Cxb[tamRespuestasFisurasMamposteria2] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasMamposteria2++;
                    } else if (Objects.equals(elementoSeleccionado, "LOSAS")) {
                        respuestasFisurasLosas2Cxb[tamRespuestasFisurasLosas2] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasLosas2++;
                    } else {
                        respuestasFisurasMuros2Cxb[tamRespuestasFisurasMuros2] = new JCheckBox(respuestas[j]);
                        tamRespuestasFisurasMuros2++;
                    }
                }
            }
        }

        int cont = 0;

        for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size(); i++){
            panel.add(new JLabel(mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).get(i)));
            if(mc.selectSugerenciasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i)!=null){
                panel.add(new JLabel("  *"+mc.selectSugerenciasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i)));
            }
            panel.add(new JLabel(" "));

            elementos= mc.selectRespuestasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i).split("/",2);
            respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

            for (int j=0; j<respuestas.length; j++){
                panel.add(respuestasFisurasMuros1Cxb[cont]);
                cont++;
            }
            panel.add(new JLabel(" "));
            panel.add(new JLabel(" "));
        }
    }


    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()==abrir){
            System.out.println("presionaste abrir");
        }

        if(e.getSource()==guardar){
            int cont=0;
            try {
                respuestasFisurasMuros1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                for(int i=0; i<contarElementos();i++){
                    if (respuestasFisurasMuros1Cxb[i].isSelected()){
                        respuestasFisurasMuros1Str[cont]=((respuestasFisurasMuros1Cxb[i])).getText();
                        cont++;
                    }
                }

                for (int i=0; i<cont; i++){
                    System.out.println(respuestasFisurasMuros1Str[i]+"\n");
                }
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }

        if (e.getSource()== nuevaInspeccionBtn){
            menu.remove(abrir);
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
            menu.add(abrir);
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
            remove(elementoInicialLbl);
            remove(vigaCbx);
            remove(losaCbx);
            remove(columnaCbx);
            remove(mamposteriaCbx);
            remove(muroCbx);
            remove(tipoAmbienteLbl);
            remove(agresivoCbx);
            remove(noAgresivoCbx);
            remove(siguienteEtapa1Btn);
            remove(scroller);

            add(nuevaInspeccionBtn);

            tituloLbl.setText("DOCTOR STRUCTURE V1.0");
            tituloLbl.setBounds(400,100,250,25);
            repaint();
        }

        if(e.getSource()==empezarInspeccionBtn){
            menu.remove(abrir);
            menu.add(guardar);
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
            //parametros iniciales
            if(vigaCbx.isSelected()){
                elementoSeleccionado="VIGAS";
            }else if(columnaCbx.isSelected()){
                elementoSeleccionado="COLUMNAS";
            }else if(mamposteriaCbx.isSelected()){
                elementoSeleccionado="MAMPOSTERIA";
            }else if(losaCbx.isSelected()){
                elementoSeleccionado="LOSAS";
            }else{
                elementoSeleccionado= "MUROS";
            }

            if(agresivoCbx.isSelected()){
                ambienteSeleccionado = agresivoCbx.getText();
            }
            else{
                ambienteSeleccionado = noAgresivoCbx.getText();
            }

            etapaActual=1;

            try {
                inicializarArreglos();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }

            tituloLbl.setText("Boletin 1 Fisuras "+"");
            remove(elementoInicialLbl);
            remove(vigaCbx);
            remove(losaCbx);
            remove(columnaCbx);
            remove(mamposteriaCbx);
            remove(muroCbx);
            remove(tipoAmbienteLbl);
            remove(agresivoCbx);
            remove(noAgresivoCbx);
            remove(siguienteEtapa1Btn);

            try {
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }

            add(scroller);
            repaint();
        }
    }

    public static void main(String Args[]) throws SQLException {
        new inicio();
    }
}
