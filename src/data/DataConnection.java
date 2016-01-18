package data;
import java.sql.*;
import java.util.ArrayList;


public class DataConnection {
	/**
     * atributos de la clase
     */
	private static Connection con;
    private static DataConnection INSTANCE = null;
    
    /**
     * constructor
     */
    private DataConnection(){
    	
    }
	
	/**
	 * datos de la conexion
	 */
	public static void performConnection() {
		String host = "127.0.0.1";
		String user = "root";
		String pass = "";
		String dtbs = "sistema";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String newConnectionURL = "jdbc:mysql://" + host + "/" + dtbs
					+ "?" + "user=" + user + "&password=" + pass;
					con = DriverManager.getConnection(newConnectionURL);
		}catch (Exception e) {
			System.out.println("Error en la conexion.");
		}
		
	}
	
	 /**
	 * crea una instancia de conexion
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
	 * cierra la conexion
	 */
	public void closeConnection() {
		try {
			con.close();
		}catch (Exception e) {
			System.out.println("Error en el tancament de la connexió.");
		}
	}
	/******************************************DATA***************************************************/
	/**
	 *retorna todos los elementos de la taba data 
	 * */
	public ArrayList<String> selectAllData() throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT * FROM data");
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
	
	/**
	 * retorna una Busqueda en la tabla data
	 * @param id que se quiere buscar
	 * */
	public ArrayList<String> selectAllDataFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT * FROM data WHERE id = "+id);
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
	
	/**
	 * retorna los ID de un determinado nivel
	 * */
	public ArrayList<String> selectIdFromLevel(int level) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT id FROM data WHERE nivel = "+level);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("id"));
			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna los nombres de un determinado nivel
	 * */
	public ArrayList<String> selectNameFromLevel(int level) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT nombre FROM data WHERE nivel = "+level);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = rs.getString("nombre");			
			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna el nombre de un determiando ID
	 * */
	public ArrayList<String> selectNombreFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT nombre FROM data WHERE id = "+id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = rs.getString("nombre");
			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna el nivel de un determiando ID
	 * */
	public ArrayList<String> selectNivelFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT nivel FROM data WHERE id = "+id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("nivel"));

			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna la descripcion de un determiando ID
	 * */
	public ArrayList<String> selectDescripcionFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT descripcion FROM data WHERE id = "+id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = rs.getString("descripcion");

			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna la cantidad de niveles existentes
	 * */
	public int selectAllNiveles() throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();

		int cont=0, numAct=0, aux;
		
		PreparedStatement ps = con.prepareStatement("SELECT nivel FROM data ");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			aux=rs.getInt("nivel");
			if (numAct!=aux) {
				cont++;
				numAct=aux;
			}
		}
		rs.close();
		return cont;
	}
	
	
	/******************************************ANTECESORES***************************************************/
	/**
	 *retorna todos los elementos de la tabla antecesores 
	 **/
	public ArrayList<String> selectAllAntecesores() throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT * FROM antecesores ");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("id_actual"))+"\t"+
					String.valueOf(rs.getInt("id_antecesor"))+"\t";
			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/**
	 * retorna el antecesor de un determinado id
	 * */
	public ArrayList<String> selectAntecesorFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT id_antecesor FROM antecesores WHERE id_actual= "+id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("id_antecesor"));
			ls.add(concat);
		}
		rs.close();
		return ls;
	}
	
	/******************************************SUCESORES***************************************************/
	/**
	 *retorna todos los elementos de la tabla sucesores
	 **/
	
	public ArrayList<String> selectAllSucesores() throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT * FROM sucesores ");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("id_actual"))+"\t"+
					String.valueOf(rs.getInt("id_sucesor"))+"\t";
			ls.add(concat);
		}
		rs.close();
		return ls;
	}

	/**
	 * retorna el antecesor de un determinado id
	 * */
	public ArrayList<String> selectSucesoresFromId(int id) throws SQLException{
		ArrayList<String> ls = new ArrayList<String>();
		String concat;
	
		PreparedStatement ps = con.prepareStatement("SELECT id_sucesor FROM sucesores WHERE id_actual ="+id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			concat = String.valueOf(rs.getInt("id_sucesor"));
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
