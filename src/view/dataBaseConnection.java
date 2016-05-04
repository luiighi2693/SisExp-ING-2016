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
    private dataBaseConnection() {

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

    /**
     * metodos
     */
    public ArrayList<String> selectBaseDatosTratamientos() throws SQLException{
        ArrayList<String> ls = new ArrayList<String>();
        String concat;

        PreparedStatement ps = con.prepareStatement("SELECT * FROM baseDatosTratamientos");
        ResultSet rs = ps.executeQuery();
        while(rs.next()){

            concat = String.valueOf(rs.getInt("idPatologia")) + "\t"+
                    rs.getString("patologia")+"\t"+
                    String.valueOf(rs.getInt("numeroTratamiento")) + "\t"+
                    rs.getString("tratamientoTerapias")+"\t";

            ls.add(concat);
        }
        rs.close();
        return ls;
    }
}