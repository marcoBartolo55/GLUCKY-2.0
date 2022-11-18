package Clases;
import java.sql.*;
public class Pacientes {
    private String Curp,Email,Pass,Nombre,Apellidos,Sexo,Telefono;
    private int Edad,TipoDiabetes;

    public String getCurp() {
        return Curp;
    }

    public void setCurp(String Curp) {
        this.Curp = Curp;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public int getTipoDiabetes() {
        return TipoDiabetes;
    }

    public void setTipoDiabetes(int TipoDiabetes) {
        this.TipoDiabetes = TipoDiabetes;
    }


    public void registrarPacientes(Pacientes pa){
        Connection con;
        Conexion a = new Conexion(); 
       try{
        con =a.Conectar();
       Statement st = con.createStatement();
       st.executeUpdate("INSERT INTO paciente VALUES('"+pa.getCurp()+"','"+pa.getEmail()+"','"+pa.getPass()+"','"+pa.getNombre()+"','"
       +pa.getApellidos()+"','"+pa.getSexo()+"','"+pa.getEdad()+"','"+pa.getTipoDiabetes()+"','"+pa.getTelefono()+"')");
       ResultSet rs = st.executeQuery("SELECT * FROM paciente");
       }catch(Exception e){
           System.out.println("Error: " + e);
       }
    }
    public boolean LoginPacientes(String Curp,String Pass ){
        Connection con;
        Conexion a = new Conexion(); 
        boolean b = true;
        try{
            con =a.Conectar();
            Statement st = con.createStatement();
            st=con.createStatement();
            ResultSet rs =st.executeQuery("SELECT * FROM paciente WHERE Curp = '"+Curp+"'");
            System.out.println(rs.next());
            System.out.println(rs.getString("Curp"));
            if(rs.getString("Curp").equals(Curp)){
                System.out.println("Si entro pa");
                String pas = rs.getString("Pass");
                if(pas.equals(Pass)){
                    b=true;
                }
                else{
                    b=false;
                }
            }
            else{
                System.out.println("Paso");
                
                b=false;
                
            }
        }catch(Exception e){
            System.out.println("Error" + e);
            b = false;
        }
        System.out.println(b);
        System.out.println("Ya lo envie pa");
        return b;
    }
    public boolean Enlace(String Curp,String Cedula,String Con){
        Connection con;
        Conexion a = new Conexion(); 
       try{
           con =a.Conectar();
           Statement st1 = con.createStatement();
           st1=con.createStatement();
           ResultSet rs1 =st1.executeQuery("SELECT * FROM doctor WHERE Cedula = '"+Cedula+"'");
           System.out.println(rs1.next());
           System.out.println(rs1.getString("Cedula"));
           if(rs1.getString("Cedula").equals(Cedula)){
                System.out.println("Si entro pa");
                Statement st = con.createStatement();
                System.out.println("Cedula: "+Cedula+"\nCurp: "+Curp);
                st.executeUpdate("INSERT INTO paciente_doctor VALUES('"+Curp+"','"+Cedula+"','"+Con+"')");
                ResultSet rs = st.executeQuery("SELECT * FROM paciente_doctor");
                return true;
            }
           else{
               return false;
           }
       }catch(Exception e){
           System.out.println("Error: " + e);
           return false;
       }
    }
    
}
