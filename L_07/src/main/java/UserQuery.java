import java.sql.*;
import java.util.ArrayList;
import java.util.List;
 class UserQuery {
     public static List<User> getUsers() throws SQLException, ClassNotFoundException {

         Connection connection = null;
         PreparedStatement statement = null;
         ResultSet resultSet = null;

         List<User> userList = new ArrayList<>();

         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             connection = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "qwerty");
             String sql = "SELECT * FROM user";
             statement = connection.prepareStatement(sql);
             resultSet = statement.executeQuery();

             while (resultSet.next()) {
                 int id = resultSet.getInt("id");
                 int age = resultSet.getInt("age");
                 String firstName = resultSet.getString("firstname");
                 String username = resultSet.getString("username");

                 User user = new User(id, age, firstName, username);
                 userList.add(user);
             }

             resultSet.close();
             statement.close();
             connection.close();
         } catch (Exception e) {
             e.printStackTrace();
         }
        return userList;
     }
}
