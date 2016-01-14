package data;
import java.sql.*;
import java.util.ArrayList;


public class DataConnection {
	/**
     * atributs de la clase
     */
	private static Connection con;
    private static DataConnection INSTANCE = null;
    
    /**
     * constructor
     */
    private DataConnection(){
    	
    }
	
	/**
	 * dades de la conexio
	 */
	public static void performConnection() {
		String host = "127.0.0.1";
		String user = "root";
		String pass = "";
		String dtbs = "tienda";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String newConnectionURL = "jdbc:mysql://" + host + "/" + dtbs
					+ "?" + "user=" + user + "&password=" + pass;
					con = DriverManager.getConnection(newConnectionURL);
		}catch (Exception e) {
			System.out.println("Error en l'obertura de la connexió.");
		}
		
	}
	
	 /**
	 * crea una instancia de conexio
	 */
	private synchronized static void createInstance() {
	        if (INSTANCE == null) { 
	            INSTANCE = new DataConnection();
	            performConnection();
	        }
	    }
	 
	    /**
	     * metode per obtenir una instancia, si ya hi existeix te la retorna sino la crea
	     * @return instancia si existeix
	     */
	    public static DataConnection getInstance() {
	        if (INSTANCE == null) createInstance();
	        return INSTANCE;
	    }
	
	/**
	 * metode per tancar la conexio
	 */
	public void closeConnection() {
		try {
			con.close();
		}catch (Exception e) {
			System.out.println("Error en el tancament de la connexió.");
		}
	}
	
	public ArrayList<String> retornaEsports() throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Producto");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			ls.add(rs.getString("nombre"));
		}
		rs.close();
		return ls;
	}

	public void insertaEsport(String nom, String cat) throws SQLException {
		String seleccio = "INSERT INTO `Producto` (`nombre`,`categoria`)VALUES (?,?)";
		PreparedStatement ps = con.prepareStatement(seleccio);
		ps.setString(1, nom); 
		ps.setString(2, cat); 
		ps.executeUpdate();
	}
}
