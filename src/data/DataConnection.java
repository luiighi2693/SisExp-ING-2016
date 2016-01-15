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
		//String dtbs = "tienda";
		String dtbs = "sistema";
		
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
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT * FROM data WHERE nivel='1000'");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = rs.getString("nombre")+"\t"+
					String.valueOf(rs.getInt("nivel"))+"\t"+
					String.valueOf(rs.getInt("id"))+"\t"+
					rs.getString("descripcion");
			ls.add(concat);
		}
		rs.close();
		return ls;
	}

	public void insertaEsport(String nom, int nivel, int id, String des) throws SQLException {
		String seleccio = "INSERT INTO `data` (`nombre`,`nivel`,`id`,`descripcion`)VALUES (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(seleccio);
		ps.setString(1, nom); 
		ps.setInt(2, nivel); 
		ps.setInt(3, id);
		ps.setString(4,des);
		ps.executeUpdate();
	}
}
