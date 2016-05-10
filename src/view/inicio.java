package view;

import javax.swing.*;
import javax.swing.border.BevelBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.Objects;

import com.itextpdf.text.*;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.pdf.PdfWriter;
import com.sun.pdfview.PDFFile;
import com.sun.pdfview.PDFPage;
import com.sun.pdfview.PagePanel;

public class inicio extends JFrame implements ActionListener{
    public JLabel tituloLbl, nombreProyectoLbl, numeroCasoLlb, ingenieroEspecialistaLbl, cedulaLbl, fechaLbl, elementoInicialLbl, tipoAmbienteLbl;
    public JLabel inicioImg, cargaDatosImg;
    public JButton nuevaInspeccionBtn, atrasDatosInspeccionBtn, empezarInspeccionBtn, siguienteBoletin1Fisura, siguienteEtapa1Fisura, siguienteBoletin2Fisura, siguienteEtapa2Fisura;
    public JButton siguienteBoletin1Fisica, siguienteEtapa1Fisica, siguienteBoletin2Fisica, siguienteEtapa2Fisica;
    public JButton siguienteBoletin1Quimica, siguienteEtapa1Quimica, siguienteBoletin2Quimica, siguienteEtapa2Quimica;
    public JButton siguienteBoletin3, siguienteAvanzarDiagnostico, siguienteEtapa4, siguienteOtrasHipotesis, siguienteReporte;
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

    public String elementoSeleccionado, ambienteSeleccionado, manifestacionSeleccionada;
    public String nombrePatologias[], idNombrePatologias[], tablaNombresSeleccionada, tablaSeleccionada, patologiaFinal;
    public int etapaActual, aciertoPatologias[], seleccionadoAciertoPatologias[], indiceRespuestasNombrePatologia[], otraPatologiaSeleccionada;
    public JCheckBox respuestasSeleccionadas[], condicionEtapa4Si, condicionEtapa4NO;
    public JComboBox comboBox;

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

        siguienteBoletin1Fisura= new JButton("Siguiente");
        siguienteEtapa1Fisura= new JButton("Siguiente");
        siguienteBoletin2Fisura= new JButton("Siguiente");
        siguienteEtapa2Fisura= new JButton("Siguiente");

        siguienteBoletin1Fisica= new JButton("Siguiente");
        siguienteEtapa1Fisica= new JButton("Siguiente");
        siguienteBoletin2Fisica= new JButton("Siguiente");
        siguienteEtapa2Fisica= new JButton("Siguiente");

        siguienteBoletin1Quimica= new JButton("Siguiente");
        siguienteEtapa1Quimica= new JButton("Siguiente");
        siguienteBoletin2Quimica= new JButton("Siguiente");
        siguienteEtapa2Quimica= new JButton("Siguiente");

        siguienteBoletin3= new JButton("Avanzar");

        siguienteAvanzarDiagnostico= new JButton("Avanzar a Diagnostico");
        siguienteEtapa4= new JButton("Evaluar Etapa 4");

        siguienteOtrasHipotesis= new JButton("Seleccionar Otras Hipotesis");
        siguienteReporte= new JButton("Avanzar a Reporte");

        inicioImg= new JLabel("");
        cargaDatosImg = new JLabel("");

        condicionEtapa4Si = new JCheckBox();
        condicionEtapa4NO = new JCheckBox();

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

        siguienteBoletin1Fisura.setBounds(850,650,150,30);
        siguienteBoletin1Fisura.addActionListener(this);
        siguienteBoletin2Fisura.setBounds(850,650,150,30);
        siguienteBoletin2Fisura.addActionListener(this);
        siguienteEtapa1Fisura.setBounds(850,650,150,30);
        siguienteEtapa1Fisura.addActionListener(this);
        siguienteEtapa2Fisura.setBounds(850,650,150,30);
        siguienteEtapa2Fisura.addActionListener(this);

        siguienteBoletin1Fisica.setBounds(850,650,150,30);
        siguienteBoletin1Fisica.addActionListener(this);
        siguienteBoletin2Fisica.setBounds(850,650,150,30);
        siguienteBoletin2Fisica.addActionListener(this);
        siguienteEtapa1Fisica.setBounds(850,650,150,30);
        siguienteEtapa1Fisica.addActionListener(this);
        siguienteEtapa2Fisica.setBounds(850,650,150,30);
        siguienteEtapa2Fisica.addActionListener(this);

        siguienteBoletin1Quimica.setBounds(850,650,150,30);
        siguienteBoletin1Quimica.addActionListener(this);
        siguienteBoletin2Quimica.setBounds(850,650,150,30);
        siguienteBoletin2Quimica.addActionListener(this);
        siguienteEtapa1Quimica.setBounds(850,650,150,30);
        siguienteEtapa1Quimica.addActionListener(this);
        siguienteEtapa2Quimica.setBounds(850,650,150,30);
        siguienteEtapa2Quimica.addActionListener(this);

        siguienteBoletin3.setBounds(850,650,150,30);
        siguienteBoletin3.addActionListener(this);

        siguienteAvanzarDiagnostico.setBounds(800,650,200,30);
        siguienteAvanzarDiagnostico.addActionListener(this);

        siguienteEtapa4.setBounds(850,600,150,30);
        siguienteEtapa4.addActionListener(this);

        siguienteOtrasHipotesis.setBounds(800,650,200,30);
        siguienteOtrasHipotesis.addActionListener(this);

        siguienteReporte.setBounds(850,600,150,30);
        siguienteReporte.addActionListener(this);

        inicioImg.setIcon(new ImageIcon("frame1.png"));
        inicioImg.setBounds(175,150,700,400);

        cargaDatosImg.setIcon(new ImageIcon("frame2.png"));
        cargaDatosImg.setBounds(175,200,700,400);

        panel.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
        panel.setBounds(300,200,600,400);
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));

        scroller.setBounds(225,200,600,400);
        scroller.setAutoscrolls(true);

        this.add(tituloLbl);
        this.add(nuevaInspeccionBtn);
        this.add(inicioImg);
    }

    public void mostrarInicio(){
        nuevaInspeccionBtn.doClick();
        atrasDatosInspeccionBtn.doClick();
    }

    public int contarElementos() throws SQLException {
        int cont=0;
        String [] elementos, respuestas;

        if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
            for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size(); i++) {
                elementos = mc.selectRespuestasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).get(i).split("/", 2);
                respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

                for (int j=0; j<respuestas.length; j++){
                    cont++;
                }
            }
        }else {
            for(int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size(); i++){
                elementos = mc.selectRespuestasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).get(i).split("/",2);
                respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

                for (int j=0; j<respuestas.length; j++){
                    cont++;
                }
            }
        }

        return cont;
    }

    public void inicializarIndices(){
        if (etapaActual==1){
            if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                if(Objects.equals(elementoSeleccionado, "VIGAS")){
                    tamRespuestasFisurasVigas1=0;
                }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                    tamRespuestasFisurasColumnas1=0;
                }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                    tamRespuestasFisurasMamposteria1=0;
                }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                    tamRespuestasFisurasLosas1=0;
                }else{
                    tamRespuestasFisurasMuros1=0;
                }
            }else if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")) {
                tamRespuestasManifestacionesFisicas1=0;
            }else{
                tamRespuestasManifestacionesQuimicas1=0;
            }
        }else{
            if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                if(Objects.equals(elementoSeleccionado, "VIGAS")){
                    tamRespuestasFisurasVigas2=0;
                }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                    tamRespuestasFisurasColumnas2=0;
                }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                    tamRespuestasFisurasMamposteria2=0;
                }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                    tamRespuestasFisurasLosas2=0;
                }else{
                    tamRespuestasFisurasMuros2=0;
                }
            }else if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")) {
                tamRespuestasManifestacionesFisicas2=0;
            }else{
                tamRespuestasManifestacionesQuimicas2=0;
            }
        }
    }

    public void inicializarArreglos() throws SQLException {
 /*       tamRespuestasFisurasColumnas1=0;
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
*/
        if(etapaActual==1){
            if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
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
            }else if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")) {
                respuestasManifestacionesFisicas1Cxb = new JCheckBox[contarElementos()];
            }else{
                respuestasManifestacionesQuimicas1Cxb = new JCheckBox[contarElementos()];
            }
        }else{
            if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
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
            }else if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")) {
                respuestasManifestacionesFisicas2Cxb = new JCheckBox[contarElementos()];
            }else{
                respuestasManifestacionesQuimicas2Cxb = new JCheckBox[contarElementos()];
            }
        }
        System.out.print(contarElementos());
    }

    public void preguntasInPane(String tipo) throws SQLException {
        //determinar todas las respuestas de la etapa
        String [] elementos, respuestas;

        if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
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
        }else{
            for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size(); i++){
                elementos= mc.selectRespuestasFromPreguntasPlanillasEtapasManifestaciones(etapaActual,manifestacionSeleccionada).get(i).split("/",2);
                respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

                for (int j=0; j<respuestas.length; j++){
                    if(etapaActual==1){
                        if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                            respuestasManifestacionesFisicas1Cxb[tamRespuestasManifestacionesFisicas1] = new JCheckBox(respuestas[j]);
                            tamRespuestasManifestacionesFisicas1++;
                        }else{
                            respuestasManifestacionesQuimicas1Cxb[tamRespuestasManifestacionesQuimicas1] = new JCheckBox(respuestas[j]);
                            tamRespuestasManifestacionesQuimicas1++;
                        }
                    }else {
                        if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                            respuestasManifestacionesFisicas2Cxb[tamRespuestasManifestacionesFisicas2] = new JCheckBox(respuestas[j]);
                            tamRespuestasManifestacionesFisicas2++;
                        }else{
                            respuestasManifestacionesQuimicas2Cxb[tamRespuestasManifestacionesQuimicas2] = new JCheckBox(respuestas[j]);
                            tamRespuestasManifestacionesQuimicas2++;
                        }
                    }
                }
            }
        }

        int cont = 0;
        panel.removeAll();

        if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
            for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size(); i++){
                panel.add(new JLabel(mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).get(i)));
                if(mc.selectSugerenciasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i)!=null){
                    panel.add(new JLabel("  *"+mc.selectSugerenciasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i)));
                }

                if(!Objects.equals(tipo, "boletin")){
                    panel.add(new JLabel(" "));

                    elementos= mc.selectRespuestasFromPreguntasPlanillasEtapas(etapaActual,elementoSeleccionado).get(i).split("/",2);
                    respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

                    for (int j=0; j<respuestas.length; j++){
                        if(etapaActual==1){
                            if(Objects.equals(elementoSeleccionado, "VIGAS")){
                                panel.add(respuestasFisurasVigas1Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                                panel.add(respuestasFisurasColumnas1Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                                panel.add(respuestasFisurasMamposteria1Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                                panel.add(respuestasFisurasLosas1Cxb[cont]);
                            }else{
                                panel.add(respuestasFisurasMuros1Cxb[cont]);
                            }
                        }else {
                            if(Objects.equals(elementoSeleccionado, "VIGAS")){
                                panel.add(respuestasFisurasVigas2Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                                panel.add(respuestasFisurasColumnas2Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                                panel.add(respuestasFisurasMamposteria2Cxb[cont]);
                            }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                                panel.add(respuestasFisurasLosas2Cxb[cont]);
                            }else{
                                panel.add(respuestasFisurasMuros2Cxb[cont]);
                            }
                        }
                        cont++;
                    }
                }
                panel.add(new JLabel(" "));
                panel.add(new JLabel(" "));
            }
        }else{
            for (int i=0; i<mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size(); i++){
                panel.add(new JLabel(mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).get(i)));
                if(mc.selectSugerenciasFromPreguntasPlanillasEtapasManifestaciones(etapaActual,manifestacionSeleccionada).get(i)!=null){
                    panel.add(new JLabel("  *"+mc.selectSugerenciasFromPreguntasPlanillasEtapasManifestaciones(etapaActual,manifestacionSeleccionada).get(i)));
                }

                if(!Objects.equals(tipo, "boletin")){
                    panel.add(new JLabel(" "));

                    elementos= mc.selectRespuestasFromPreguntasPlanillasEtapasManifestaciones(etapaActual,manifestacionSeleccionada).get(i).split("/",2);
                    respuestas = elementos[1].split("-", Integer.parseInt(elementos[0]));

                    for (int j=0; j<respuestas.length; j++){
                        if(etapaActual==1){
                            if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                                panel.add(respuestasManifestacionesFisicas1Cxb[cont]);
                            }else{
                                panel.add(respuestasManifestacionesQuimicas1Cxb[cont]);
                            }
                        }else {
                            if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                                panel.add(respuestasManifestacionesFisicas2Cxb[cont]);
                            }else{
                                panel.add(respuestasManifestacionesQuimicas2Cxb[cont]);
                            }
                        }
                        cont++;
                    }
                }

                panel.add(new JLabel(" "));
                panel.add(new JLabel(" "));
            }
        }
    }

    public void safeChanges(){
        int cont=0;
        try {
            if(etapaActual==1){
                if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                    if(Objects.equals(elementoSeleccionado, "VIGAS")){
                        respuestasFisurasVigas1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasVigas1Cxb[i].isSelected()){
                                respuestasFisurasVigas1Str[cont]=((respuestasFisurasVigas1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                        respuestasFisurasColumnas1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasColumnas1Cxb[i].isSelected()){
                                respuestasFisurasColumnas1Str[cont]=((respuestasFisurasColumnas1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                        respuestasFisurasMamposteria1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasMamposteria1Cxb[i].isSelected()){
                                respuestasFisurasMamposteria1Str[cont]=((respuestasFisurasMamposteria1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                        respuestasFisurasLosas1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasLosas1Cxb[i].isSelected()){
                                respuestasFisurasLosas1Str[cont]=((respuestasFisurasLosas1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else{
                        respuestasFisurasMuros1Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasMuros1Cxb[i].isSelected()){
                                respuestasFisurasMuros1Str[cont]=((respuestasFisurasMuros1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }
                }else {
                    if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                        respuestasManifestacionesFisicas1Str= new String[mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasManifestacionesFisicas1Cxb[i].isSelected()){
                                respuestasManifestacionesFisicas1Str[cont]=((respuestasManifestacionesFisicas1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else{
                        respuestasManifestacionesQuimicas1Str= new String[mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasManifestacionesQuimicas1Cxb[i].isSelected()){
                                respuestasManifestacionesQuimicas1Str[cont]=((respuestasManifestacionesQuimicas1Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }
                }
            }else{
                if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                    if(Objects.equals(elementoSeleccionado, "VIGAS")){
                        respuestasFisurasVigas2Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasVigas2Cxb[i].isSelected()){
                                respuestasFisurasVigas2Str[cont]=((respuestasFisurasVigas2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                        respuestasFisurasColumnas2Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasColumnas2Cxb[i].isSelected()){
                                respuestasFisurasColumnas2Str[cont]=((respuestasFisurasColumnas2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                        respuestasFisurasMamposteria2Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasMamposteria2Cxb[i].isSelected()){
                                respuestasFisurasMamposteria2Str[cont]=((respuestasFisurasMamposteria2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                        respuestasFisurasLosas2Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasLosas2Cxb[i].isSelected()){
                                respuestasFisurasLosas2Str[cont]=((respuestasFisurasLosas2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else{
                        respuestasFisurasMuros2Str = new String[mc.selectPreguntasFromPreguntasPlanillasEtapas(etapaActual, elementoSeleccionado).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasFisurasMuros2Cxb[i].isSelected()){
                                respuestasFisurasMuros2Str[cont]=((respuestasFisurasMuros2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }
                }else {
                    if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                        respuestasManifestacionesFisicas2Str= new String[mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasManifestacionesFisicas2Cxb[i].isSelected()){
                                respuestasManifestacionesFisicas2Str[cont]=((respuestasManifestacionesFisicas2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }else{
                        respuestasManifestacionesQuimicas2Str= new String[mc.selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(etapaActual, manifestacionSeleccionada).size()];
                        for(int i=0; i<contarElementos();i++){
                            if (respuestasManifestacionesQuimicas2Cxb[i].isSelected()){
                                respuestasManifestacionesQuimicas2Str[cont]=((respuestasManifestacionesQuimicas2Cxb[i])).getText();
                                cont++;
                            }
                        }
                    }
                }
            }

            for (int i=0; i<cont; i++){
                if(etapaActual==1){
                    if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                        if(Objects.equals(elementoSeleccionado, "VIGAS")){
                            System.out.println(respuestasFisurasVigas1Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                            System.out.println(respuestasFisurasColumnas1Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                            System.out.println(respuestasFisurasMamposteria1Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                            System.out.println(respuestasFisurasLosas1Str[i]+"\n");
                        }else{
                            System.out.println(respuestasFisurasMuros1Str[i]+"\n");
                        }
                    }else {
                        if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                            System.out.println(respuestasManifestacionesFisicas1Str[i]+"\n");
                        }else{
                            System.out.println(respuestasManifestacionesQuimicas1Str[i]+"\n");
                        }
                    }
                }else{
                    if(Objects.equals(manifestacionSeleccionada, "FISURAS")){
                        if(Objects.equals(elementoSeleccionado, "VIGAS")){
                            System.out.println(respuestasFisurasVigas2Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "COLUMNAS")){
                            System.out.println(respuestasFisurasColumnas2Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "MAMPOSTERIA")){
                            System.out.println(respuestasFisurasMamposteria2Str[i]+"\n");
                        }else if(Objects.equals(elementoSeleccionado, "LOSAS")){
                            System.out.println(respuestasFisurasLosas2Str[i]+"\n");
                        }else{
                            System.out.println(respuestasFisurasMuros2Str[i]+"\n");
                        }
                    }else {
                        if(Objects.equals(manifestacionSeleccionada, "MANIFESTACION FISICA")){
                            System.out.println(respuestasManifestacionesFisicas2Str[i]+"\n");
                        }else{
                            System.out.println(respuestasManifestacionesQuimicas2Str[i]+"\n");
                        }
                    }
                }
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
    }

    public void insertBoletin3 () {
        panel.removeAll();

        panel.add(new JLabel("1. Ensayo de Core-Drill\n"));
        panel.add(new JLabel(" "));

        panel.add(new JLabel("2. Analisis Estructural (SLA , DLA , SNLA , DNLA )\n\n"));
        panel.add(new JLabel(" "));

        panel.add(new JLabel("3. Pruebas de Carga\n\n"));
        panel.add(new JLabel(" "));

        panel.add(new JLabel("4. Analisis de Sistema de Fundaciones\n"));
        panel.add(new JLabel(" "));

        panel.add(new JLabel("5. Estudio de Suelos\n"));
        panel.add(new JLabel(" "));
    }

    public static String validacionTamano(String x, int tamano) {
        if(x.length() < tamano) {
            for(int i = x.length(); i < tamano; ++i) {
                x = x + " ";
            }
        } else if(x.length() > tamano) {
            x = (String)x.subSequence(0, tamano);
        }

        return x;
    }

    public void reporte() throws IOException, DocumentException{
        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream("C:\\drStructure\\inspecciones\\"+numeroCasoTxF.getText()+"\\"+numeroCasoTxF.getText()+".pdf"));
        document.setPageSize(PageSize.A4);
        document.setMargins(36.0F, 30.0F, 30.0F, 30.0F);
        document.setMarginMirroring(true);
        document.open();

        Font fuente = new Font();

        fuente.setStyle(1);
        Paragraph paragraph = new Paragraph("Software Dr. Structure 1.0\nReporte Final de Diagnostico\n\n", fuente);
        paragraph.setAlignment(1);
        document.add(paragraph);

        String nombreProyecto = nombreProyectoTxF.getText();
        nombreProyecto = validacionTamano(nombreProyecto, 70);

        String numeroCaso = numeroCasoTxF.getText();
        numeroCaso = validacionTamano(numeroCaso, 10);

        paragraph = new Paragraph("Nombre de Proyecto:   " + nombreProyecto + "N° Caso: " + numeroCaso);
        document.add(paragraph);

        String nombreIngeniero = ingenieroEspecialistaTxF.getText();
        nombreIngeniero = validacionTamano(nombreIngeniero, 35);

        String cedula =cedulaTxF.getText();
        cedula = validacionTamano(cedula, 26);

        String fecha = fechaTxF.getText();
        paragraph = new Paragraph("Ing. Espcialista: " + nombreIngeniero + "CIV: " + cedula + "Fecha: " + fecha + "\n\n");
        document.add(paragraph);

        fuente.setStyle(1);
        paragraph = new Paragraph("    *Mecanismo / Patología Diagnosticada:", fuente);
        document.add(paragraph);

//        String patologiaDiagnosticada = "(Variación Térmica, Retracción Hidráulica, Ataque de Cloruros, etc.) *La que selecciono el Usuario en la lista de Hipótesis de la Etapa 3.";
        String patologiaDiagnosticada = patologiaFinal;
        if (patologiaDiagnosticada.length() > 89) {
            paragraph = new Paragraph("                *" + patologiaDiagnosticada.subSequence(0, 88) + "\n                 " + patologiaDiagnosticada.subSequence(88, patologiaDiagnosticada.length()));
        } else {
            paragraph = new Paragraph("                *" + patologiaDiagnosticada);
        }
        document.add(paragraph);

        fuente.setStyle(1);
        paragraph = new Paragraph("\n    *Síntomas correspondientes a Dicha Patología:", fuente);
        document.add(paragraph);

        for (int i = 0; i < 5; ++i) {
            paragraph = new Paragraph("                * Sintoma " + (i + 1));
            document.add(paragraph);
        }

        fuente.setStyle(1);
        paragraph = new Paragraph("\n    *Referencia Grafica de la Patología:", fuente);
        document.add(paragraph);

        Image image1 = Image.getInstance("imagen.png");
//        image1.setAbsolutePosition(150, 500);
        document.add(image1);

        fuente.setStyle(1);
        paragraph = new Paragraph("\n    *Causas u Orígenes conocidos de la Patología Diagnosticada:", fuente);
        document.add(paragraph);

        for (int i = 0; i < 5; ++i) {
            paragraph = new Paragraph("                * Causa " + (i + 1));
            document.add(paragraph);
        }

        fuente.setStyle(1);
        paragraph = new Paragraph("\n    *Acciones Correctivas / Preventivas, para Reparar y Erradicar  Localmente el mecanismo:", fuente);
        document.add(paragraph);

        for (int i = 0; i < 5; ++i) {
            paragraph = new Paragraph("                * Terapia " + (i + 1));
            document.add(paragraph);
        }

        document.close();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()==abrir){
            System.out.println("presionaste abrir");
        }

        if(e.getSource()==guardar){
            safeChanges();
            System.out.println("\n");
            System.out.println(respuestasFisurasColumnas1Str.length);
            System.out.println(respuestasFisurasColumnas2Str.length);
            System.out.println(respuestasManifestacionesFisicas1Str.length);
            System.out.println(respuestasManifestacionesFisicas2Str.length);
            System.out.println(respuestasManifestacionesQuimicas1Str.length);
            System.out.println(respuestasManifestacionesQuimicas2Str.length);
        }

        if (e.getSource()== nuevaInspeccionBtn){
            menu.remove(abrir);
            menu.remove(guardar);
            remove(inicioImg);
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
            add(cargaDatosImg);

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
            remove(scroller);
            remove(siguienteEtapa4);
            remove(siguienteOtrasHipotesis);
            remove(siguienteReporte);
            remove(siguienteEtapa4);
            remove(siguienteBoletin1Fisura);
            remove(siguienteEtapa1Fisura);
            remove(siguienteBoletin2Fisura);
            remove(siguienteEtapa2Fisura);
            remove(siguienteBoletin1Fisica);
            remove(siguienteEtapa1Fisica);
            remove(siguienteBoletin2Fisica);
            remove(siguienteEtapa2Fisica);
            remove(siguienteBoletin1Quimica);
            remove(siguienteEtapa1Quimica);
            remove(siguienteBoletin2Quimica);
            remove(siguienteEtapa2Quimica);
            remove(siguienteBoletin3);
            remove(siguienteAvanzarDiagnostico);
            remove(cargaDatosImg);

            add(nuevaInspeccionBtn);
            add(inicioImg);
            panel.setBounds(300,200,600,400);
            scroller.setBounds(225,200,600,400);
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
            remove(cargaDatosImg);

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
            add(siguienteBoletin1Fisura);

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

//            try {
                File dir = new File("C:\\drStructure\\inspecciones\\"+numeroCasoTxF.getText());
                dir.mkdir();
//                String cmd="md C:\\drStructure\\inspecciones\\"+numeroCasoTxF.getText();
//                Runtime.getRuntime().exec(cmd);
//            } catch (IOException e1) {
//                e1.printStackTrace();
//            }

            repaint();
        }

        if(e.getSource()==siguienteBoletin1Fisura){
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

            manifestacionSeleccionada= "FISURAS";

            try {
                inicializarArreglos();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }

            tituloLbl.setText("Boletin 1 Fisuras "+elementoSeleccionado);
            remove(elementoInicialLbl);
            remove(vigaCbx);
            remove(losaCbx);
            remove(columnaCbx);
            remove(mamposteriaCbx);
            remove(muroCbx);
            remove(tipoAmbienteLbl);
            remove(agresivoCbx);
            remove(noAgresivoCbx);
            remove(siguienteBoletin1Fisura);
            remove(cargaDatosImg);

            try {
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }

            add(scroller);
            add(siguienteEtapa1Fisura);
            repaint();
        }

        if(e.getSource()==siguienteEtapa1Fisura){
            tituloLbl.setText("Etapa 1 Fisuras "+elementoSeleccionado);
            remove(siguienteEtapa1Fisura);
            add(siguienteBoletin2Fisura);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin2Fisura) {
            safeChanges();
            etapaActual=2;

            tituloLbl.setText("Boletin 2 Fisuras "+elementoSeleccionado);
            remove(siguienteBoletin2Fisura);
            add(siguienteEtapa2Fisura);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteEtapa2Fisura){
            tituloLbl.setText("Etapa 2 Fisuras "+elementoSeleccionado);
            remove(siguienteEtapa2Fisura);
            add(siguienteBoletin1Fisica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin1Fisica){
            safeChanges();
            etapaActual=1;
            manifestacionSeleccionada= "MANIFESTACION FISICA";

            tituloLbl.setText("Boletin 1 Manifestaciòn Fìsica");
            remove(siguienteBoletin1Fisica);
            add(siguienteEtapa1Fisica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteEtapa1Fisica){
            tituloLbl.setText("Etapa 1 Manifestaciòn Fìsica");
            remove(siguienteEtapa1Fisica);
            add(siguienteBoletin2Fisica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin2Fisica){
            safeChanges();
            etapaActual=2;

            tituloLbl.setText("Boletin 2 Manifestaciòn Fìsica");
            remove(siguienteBoletin2Fisica);
            add(siguienteEtapa2Fisica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteEtapa2Fisica){
            tituloLbl.setText("etapa 2 Manifestaciòn Fìsica");
            remove(siguienteEtapa2Fisica);
            add(siguienteBoletin1Quimica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin1Quimica){
            safeChanges();
            etapaActual=1;
            manifestacionSeleccionada= "MANIFESTACION QUIMICA";

            tituloLbl.setText("boletin 1 Manifestaciòn Quimica");
            remove(siguienteBoletin1Quimica);
            add(siguienteEtapa1Quimica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteEtapa1Quimica){
            tituloLbl.setText("Etapa 1 Manifestaciòn Quimica");
            remove(siguienteEtapa1Quimica);
            add(siguienteBoletin2Quimica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin2Quimica){
            safeChanges();
            etapaActual=2;

            tituloLbl.setText("boletin 2 Manifestaciòn Quimica");
            remove(siguienteBoletin2Quimica);
            add(siguienteEtapa2Quimica);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("boletin");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteEtapa2Quimica){
            tituloLbl.setText("Etapa 2 Manifestaciòn Quimica");
            remove(siguienteEtapa2Quimica);
            add(siguienteBoletin3);
            inicializarIndices();
            try {
                inicializarArreglos();
                preguntasInPane("etapa");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            repaint();
        }

        if(e.getSource()==siguienteBoletin3){
            safeChanges();
            tituloLbl.setText("Boletin 3");
            remove(siguienteBoletin3);
            add(siguienteAvanzarDiagnostico);
            add(siguienteEtapa4);

           insertBoletin3();
            repaint();
        }

        if(e.getSource()==siguienteAvanzarDiagnostico){
            if(condicionEtapa4NO.isSelected()){
                JOptionPane.showMessageDialog(null, "AVANCE A DIAGNOSTICO Y EN \" SELECCIONAR OTRAS HIPOTESIS\" , SELECCIONE LA FALLA ENCONTRADA EN LOS ANALISIS ESTRUCTURALES PARA PASAR A REPORTE");
            }

            if(vigaCbx.isSelected()){
                tablaNombresSeleccionada= "matrizrespuestaspatologicasvigas_nombrepatologia";
                tablaSeleccionada = "matrizrespuestaspatologicasvigas_patologia";
            }else if(columnaCbx.isSelected()){
                tablaNombresSeleccionada= "matrizrespuestaspatologicascolumnas_nombrepatologia";
                tablaSeleccionada= "matrizrespuestaspatologicascolumnas_patologia";
            }else if(mamposteriaCbx.isSelected()){
                tablaNombresSeleccionada= "matrizrespuestaspatologicasparedes_nombrepatologia";
                tablaSeleccionada= "matrizrespuestaspatologicasparedes_patologia";
            }else if(losaCbx.isSelected()){
                tablaNombresSeleccionada= "matrizrespuestaspatologicaslosas_nombrepatologia";
                tablaSeleccionada= "matrizrespuestaspatologicaslosas_patologia";
            }else{
                tablaNombresSeleccionada= "matrizrespuestaspatologicasmuros_nombrepatologia";
                tablaSeleccionada= "matrizrespuestaspatologicasmuros_patologia";
            }

            try {
                nombrePatologias = new String[mc.selectNombresPatologias(tablaNombresSeleccionada).size()];
                for(int i = 0; i<mc.selectNombresPatologias(tablaNombresSeleccionada).size(); i++){
                    nombrePatologias[i]= mc.selectNombresPatologias(tablaNombresSeleccionada).get(i);
                }

                idNombrePatologias = new String[mc.selectIdNombresPatologias(tablaNombresSeleccionada).size()];
                for(int i = 0; i<mc.selectIdNombresPatologias(tablaNombresSeleccionada).size(); i++){
                    idNombrePatologias[i]= mc.selectIdNombresPatologias(tablaNombresSeleccionada).get(i);
                }

                aciertoPatologias = new int[nombrePatologias.length];

                int cont;

                for(int i =0; i<idNombrePatologias.length; i++){
                    cont =0;

                    //FISURAS
                    if(vigaCbx.isSelected()){
                        for(int j=0; j<respuestasFisurasVigas1Str.length;j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasVigas1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                        for(int j=respuestasFisurasVigas1Str.length; j<(respuestasFisurasVigas2Str.length+respuestasFisurasVigas1Str.length); j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasVigas2Str[j-respuestasFisurasVigas1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                    }else if(columnaCbx.isSelected()){
                        for(int j=0; j<respuestasFisurasColumnas1Str.length;j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasColumnas1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                        for(int j=respuestasFisurasColumnas1Str.length; j<(respuestasFisurasColumnas2Str.length+respuestasFisurasColumnas1Str.length); j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasColumnas2Str[j-respuestasFisurasColumnas1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }
                    }else if(mamposteriaCbx.isSelected()){
                        for(int j=0; j<respuestasFisurasMamposteria1Str.length;j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasMamposteria1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                        for(int j=respuestasFisurasMamposteria1Str.length; j<(respuestasFisurasMamposteria2Str.length+respuestasFisurasMamposteria1Str.length); j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasMamposteria2Str[j-respuestasFisurasMamposteria1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }
                    }else if(losaCbx.isSelected()){
                        for(int j=0; j<respuestasFisurasLosas1Str.length;j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasLosas1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                        for(int j=respuestasFisurasLosas1Str.length; j<(respuestasFisurasLosas2Str.length+respuestasFisurasLosas1Str.length); j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasLosas2Str[j-respuestasFisurasLosas1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }
                    }else{
                        for(int j=0; j<respuestasFisurasMuros1Str.length;j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasMuros1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }

                        for(int j=respuestasFisurasMuros1Str.length; j<(respuestasFisurasMuros2Str.length+respuestasFisurasMuros1Str.length); j++){
                            if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "NO")){
                                if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j), "CUALQUIERA")){
                                    cont++;
                                }else if (Objects.equals(respuestasFisurasMuros2Str[j-respuestasFisurasMuros1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISURAS").get(j))){
                                    cont++;
                                }
                            }
                        }
                    }

                    //FISICAS
                    for(int j=0; j<respuestasManifestacionesFisicas1Str.length;j++){
                        if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j), "NO")){
                            if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j), "CUALQUIERA")){
                                cont++;
                            }else if (Objects.equals(respuestasManifestacionesFisicas1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j))){
                                cont++;
                            }
                        }
                    }

                    for(int j=respuestasManifestacionesFisicas1Str.length; j<(respuestasManifestacionesFisicas2Str.length+respuestasManifestacionesFisicas1Str.length); j++){
                        if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j), "NO")){
                            if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j), "CUALQUIERA")){
                                cont++;
                            }else if (Objects.equals(respuestasManifestacionesFisicas2Str[j-respuestasManifestacionesFisicas1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "FISICAS").get(j))){
                                cont++;
                            }
                        }
                    }

                    //QUIMICAS

                    for(int j=0; j<respuestasManifestacionesQuimicas1Str.length;j++){
                        if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j), "NO")){
                            if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j), "CUALQUIERA")){
                                cont++;
                            }else if (Objects.equals(respuestasManifestacionesQuimicas1Str[j], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j))){
                                cont++;
                            }
                        }
                    }

                    for(int j=respuestasManifestacionesQuimicas1Str.length; j<(respuestasManifestacionesQuimicas2Str.length+respuestasManifestacionesQuimicas1Str.length); j++){
                        if(!Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j), "NO")){
                            if(Objects.equals(mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j), "CUALQUIERA")){
                                cont++;
                            }else if (Objects.equals(respuestasManifestacionesQuimicas2Str[j-respuestasManifestacionesQuimicas1Str.length], mc.selectTablaForHipotesis(tablaSeleccionada, idNombrePatologias[i], "QUIMICAS").get(j))){
                                cont++;
                            }
                        }
                    }

                    aciertoPatologias[i]=cont;
                }
            } catch (SQLException e1) {
                e1.printStackTrace();
            }

            //elegir las tres hipotesis de mayor coincidencia
            respuestasSeleccionadas = new JCheckBox[3];
            seleccionadoAciertoPatologias=new int[aciertoPatologias.length];
            indiceRespuestasNombrePatologia = new int[3];
            double porcentajes [] = new double[3];
            DecimalFormat decimales = new DecimalFormat("0.00");
            int tam;

            if(vigaCbx.isSelected()){
                tam=respuestasFisurasVigas1Str.length+respuestasFisurasVigas2Str.length;
            }else if(columnaCbx.isSelected()){
                tam= respuestasFisurasColumnas1Str.length+respuestasFisurasColumnas2Str.length;
            }else if(mamposteriaCbx.isSelected()){
                tam=respuestasFisurasMamposteria1Str.length+respuestasFisurasMamposteria2Str.length;
            }else if(losaCbx.isSelected()){
                tam = respuestasFisurasLosas1Str.length+respuestasFisurasLosas2Str.length;
            }else{
                tam = respuestasFisurasMuros1Str.length+respuestasFisurasMuros2Str.length;
            }

            tam = tam + respuestasManifestacionesFisicas1Str.length+ respuestasManifestacionesFisicas2Str.length;
            tam = tam + respuestasManifestacionesQuimicas1Str.length + respuestasManifestacionesQuimicas2Str.length;

            int mayor = -1;
            for (int i=0; i<aciertoPatologias.length;i++){
                if (aciertoPatologias[i]>mayor && seleccionadoAciertoPatologias[i]!=1){
                    mayor  = aciertoPatologias[i];
                }
            }

            for (int i=0; i<aciertoPatologias.length;i++){
                if (mayor == aciertoPatologias[i] && seleccionadoAciertoPatologias[i]!=1){
                    porcentajes[0] = ((float)aciertoPatologias[i]/(tam))*100;
                    indiceRespuestasNombrePatologia[0] = i;
                    respuestasSeleccionadas[0] = new JCheckBox(nombrePatologias[i]+": "+decimales.format(porcentajes[0])+"%");
                    seleccionadoAciertoPatologias[i]=1;
                    break;
                }
            }

            mayor=-1;
            for (int i=0; i<aciertoPatologias.length;i++){
                if (aciertoPatologias[i]>mayor && seleccionadoAciertoPatologias[i]!=1){
                    mayor  = aciertoPatologias[i];
                }
            }

            for (int i=0; i<aciertoPatologias.length;i++){
                if (mayor == aciertoPatologias[i] && seleccionadoAciertoPatologias[i]!=1){
                    porcentajes[1] = ((float)aciertoPatologias[i]/(tam))*100;
                    indiceRespuestasNombrePatologia[1] = i;
                    respuestasSeleccionadas[1] = new JCheckBox(nombrePatologias[i]+": "+decimales.format(porcentajes[1])+"%");
                    seleccionadoAciertoPatologias[i]=1;
                    break;
                }
            }

            mayor=-1;
            for (int i=0; i<aciertoPatologias.length;i++){
                if (aciertoPatologias[i]>mayor && seleccionadoAciertoPatologias[i]!=1){
                    mayor  = aciertoPatologias[i];
                }
            }

            for (int i=0; i<aciertoPatologias.length;i++){
                if (mayor == aciertoPatologias[i] && seleccionadoAciertoPatologias[i]!=1){
                    porcentajes[2] = ((float)aciertoPatologias[i]/(tam))*100;
                    indiceRespuestasNombrePatologia[2] = i;
                    respuestasSeleccionadas[2] = new JCheckBox(nombrePatologias[i]+": "+decimales.format(porcentajes[2])+"%");
                    seleccionadoAciertoPatologias[i]=1;
                    break;
                }
            }
            otraPatologiaSeleccionada=0;

            panel.removeAll();

            panel.add(respuestasSeleccionadas[0]);
            panel.add(new JLabel(" "));
            panel.add(respuestasSeleccionadas[1]);
            panel.add(new JLabel(" "));
            panel.add(respuestasSeleccionadas[2]);

            tituloLbl.setText("Planteamiento de hipotesis de Diagnostico");
            remove(siguienteAvanzarDiagnostico);
            remove(siguienteEtapa4);
            add(siguienteOtrasHipotesis);
            add(siguienteReporte);

            repaint();
        }

        if(e.getSource()==siguienteEtapa4){
            tituloLbl.setText("Etapa 4");
            remove(siguienteOtrasHipotesis);
            remove(siguienteReporte);
            remove(siguienteEtapa4);
            add(siguienteAvanzarDiagnostico);

            panel.removeAll();
            panel.add(new JLabel("¿ El comportamiento de los componentes de la estructura ( Super-Estructura, Infra-Estructura\n, Suelo de fundación, etc.) fue satisfactorio?"));
            panel.add(new JLabel(" "));
            condicionEtapa4Si.setText("SI");
            panel.add(condicionEtapa4Si);
            panel.add(new JLabel(" "));
            condicionEtapa4NO.setText("NO");
            panel.add(condicionEtapa4NO);
            panel.add(new JLabel(" "));

            repaint();
        }

        if(e.getSource()==siguienteOtrasHipotesis){

            String patologiasSeleccionar [] = new String[0];
            otraPatologiaSeleccionada=1;

            try {
                patologiasSeleccionar = new String[mc.selectNombresPatologias(tablaNombresSeleccionada).size()];
                for(int i=0; i<mc.selectNombresPatologias(tablaNombresSeleccionada).size();i++){
                    patologiasSeleccionar[i]= mc.selectNombresPatologias(tablaNombresSeleccionada).get(i);
                }
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            comboBox = new JComboBox(patologiasSeleccionar);

            tituloLbl.setText("Seleccion de otra hipotesis");
            remove(siguienteOtrasHipotesis);
            panel.removeAll();
            panel.setBounds(300,200,300,50);
            scroller.setBounds(225,200,300,50);
            panel.add(comboBox);
            repaint();
        }

        if(e.getSource()==siguienteReporte ){

            tituloLbl.setText("reporte");
            panel.setBounds(300,200,600,400);
            scroller.setBounds(225,200,600,400);
            panel.removeAll();
            remove(siguienteReporte);
            remove(siguienteOtrasHipotesis);

            if(otraPatologiaSeleccionada==0){
                if(respuestasSeleccionadas[0].isSelected()){
                    try {
                        patologiaFinal=mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[0]);
                        System.out.println(mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[0]));
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                }else if(respuestasSeleccionadas[1].isSelected()){
                    try {
                        patologiaFinal=mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[1]);
                        System.out.println(mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[1]));
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                }else{
                    try {
                        patologiaFinal=mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[2]);
                        System.out.println(mc.selectNombresPatologias(tablaNombresSeleccionada).get(indiceRespuestasNombrePatologia[2]));
                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }
                }
            }else{
                patologiaFinal=comboBox.getSelectedItem().toString();
                System.out.println(comboBox.getSelectedItem());
            }

           try {
                reporte();
            } catch (IOException e1) {
                e1.printStackTrace();
            } catch (DocumentException e1) {
                e1.printStackTrace();
            }

            JFrame frame = new JFrame("PDF Test");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            PagePanel panel = new PagePanel();
            frame.add(panel);
            frame.pack();
            frame.setVisible(true);

            //load a pdf from a byte buffer
            File file = new File("C:\\drStructure\\inspecciones\\"+numeroCasoTxF.getText()+"\\"+numeroCasoTxF.getText()+".pdf");
            RandomAccessFile raf = null;
            try {
                raf = new RandomAccessFile(file, "r");
                FileChannel channel = raf.getChannel();
                ByteBuffer buf = channel.map(FileChannel.MapMode.READ_ONLY, 0, channel.size());
                PDFFile pdffile = new PDFFile(buf);
                PDFPage page = pdffile.getPage(0);
                panel.showPage(page);
            } catch (FileNotFoundException e1) {
                e1.printStackTrace();
            } catch (IOException e1) {
                e1.printStackTrace();
            }

            add(frame);

            repaint();
        }
    }

    public static void main(String Args[]) throws SQLException {
        new inicio();
    }
}