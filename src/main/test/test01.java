import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;

public class test01 {
    @Test
    public void text01(){
        ApplicationContext ioc = new ClassPathXmlApplicationContext("application.xml");
        String[] beanNames = ioc.getBeanDefinitionNames();
        for (String name : beanNames) {
            System.out.println(name);
        }
    }
}
