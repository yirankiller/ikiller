import org.junit.Test;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

/**
 * Created by eason on 14-10-28.
 */
public class PasswordTest {

    @Test
    public void testMD5Salt(){
        StandardPasswordEncoder standardPasswordEncoder = new StandardPasswordEncoder("flower-secret");
        System.out.println(standardPasswordEncoder.encode("root"));
    }

}
