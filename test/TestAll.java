import com.xceder.PersonSet;
import com.xceder.PersonTest;
import org.junit.runner.RunWith;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author: xiaopan
 * Date: 2018-03-26
 * Time: 上午10:30
 */
@RunWith(org.junit.runners.Suite.class)
@org.junit.runners.Suite.SuiteClasses({CarTest.class,CarTestOne.class,AddTest.class,JUnitHelloWorld.class, PersonTest.class, PersonSet.class})
public class TestAll {}
