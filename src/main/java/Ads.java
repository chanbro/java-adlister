import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all() throws SQLException;

    List<Ad> getAllByUser(long userId) throws SQLException;

    List<Ad> getAdsByCategory(String category) throws SQLException;

    // insert a new ad and return the new ad's id
    Long insert(Ad ad) throws SQLException;

    Ad retrieve(long id) throws SQLException;

    boolean delete(long id) throws SQLException;
//
//    boolean refresh(Ad ad);
//
//    boolean update(Ad ad);
}
