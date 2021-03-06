package view;
import java.sql.*;
import java.util.ArrayList;


public class dataBaseConnection {
    /**
     * atributos de la clase
     */
    private static Connection con;
    private static dataBaseConnection INSTANCE = null;

    /**
     * constructor
     */
    public dataBaseConnection() {

    }

    /**
     * datos de la conexion
     */
    public static void performConnection() {
        String host = "127.0.0.1";
        String user = "root";
        String pass = "";
        String dtbs = "ingenieria";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String newConnectionURL = "jdbc:mysql://" + host + "/" + dtbs
                    + "?" + "user=" + user + "&password=" + pass;
            con = DriverManager.getConnection(newConnectionURL);
        } catch (Exception e) {
            System.out.println("Error en la conexion.");
        }

    }

    /**
     * crea una instancia de conexion
     */
    private synchronized static void createInstance() {
        if (INSTANCE == null) {
            INSTANCE = new dataBaseConnection();
            performConnection();
        }
    }

    /**
     * metode per obtenir una instancia, si ya hi existeix te la retorna sino la crea
     *
     * @return instancia si existeix
     */
    public static dataBaseConnection getInstance() {
        if (INSTANCE == null) createInstance();
        return INSTANCE;
    }

    /**
     * cierra la conexion
     */
    public void closeConnection() {
        try {
            con.close();
        } catch (Exception e) {
            System.out.println("Error en el tancament de la connexió.");
        }
    }

    public ArrayList<String> selectPreguntasFromPreguntasPlanillasEtapas(int numeroEtapa, String elemento) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT numeroPregunta, pregunta FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND elemento = '"+elemento+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  String.valueOf(rs.getInt("numeroPregunta"))+". "+rs.getString("pregunta");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectPreguntasFromPreguntasPlanillasEtapasManifestaciones(int numeroEtapa, String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT numeroPregunta, pregunta FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  String.valueOf(rs.getInt("numeroPregunta"))+". "+rs.getString("pregunta");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectSugerenciasFromPreguntasPlanillasEtapas(int numeroEtapa, String elemento) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT sugerencia FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND elemento = '"+elemento+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("sugerencia");
            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectSugerenciasFromPreguntasPlanillasEtapasManifestaciones(int numeroEtapa, String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT sugerencia FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("sugerencia");
            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectRespuestasFromPreguntasPlanillasEtapas(int numeroEtapa, String elemento) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT cantRespuestas, respuestas FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND elemento = '"+elemento+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  String.valueOf(rs.getInt("cantRespuestas"))+"/"+rs.getString("respuestas");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectRespuestasFromPreguntasPlanillasEtapasManifestaciones(int numeroEtapa, String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT cantRespuestas, respuestas FROM preguntasplanillasetapas WHERE numeroEtapa = "+numeroEtapa+ " AND patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  String.valueOf(rs.getInt("cantRespuestas"))+"/"+rs.getString("respuestas");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectIdNombresPatologias(String nombreTabla) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT idPatologia FROM "+nombreTabla);
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("idPatologia");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectNombresPatologias(String nombreTabla) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT nombrePatologia FROM "+nombreTabla);
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("nombrePatologia");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectTablaForHipotesis(String nombreTabla, String idNombrePatologias, String manifestacion) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT "+idNombrePatologias+" FROM "+nombreTabla+" WHERE nombre ='"+manifestacion+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString(idNombrePatologias);

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectSintomas(String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT sintoma FROM matrizsintomas WHERE patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("sintoma");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectCausas(String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT causa FROM matrizcausas WHERE patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("causa");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectTerapias(String patologia) throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT terapia FROM matrizterapias WHERE patologia = '"+patologia+"'");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("terapia");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public ArrayList<String> selectPatologias() throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT DISTINCT patologia FROM matrizterapias");
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            concat =  rs.getString("patologia");

            ls.add(concat);
        }
        rs.close();
        return ls;
    }

    public void insertPropiedades(String tabla, String patologia, String metodo, String propiedad) throws SQLException{
        PreparedStatement ps = con.prepareStatement("INSERT INTO "+tabla+" (patologia, "+metodo+") VALUES ('"+patologia+"', '"+propiedad+"')");
        ps.execute();
    }
}