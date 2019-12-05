import org.junit.*;
import hello.Greeter;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;


//@RunWith(Parameterized.class)
public class GreeterTest {
//    @Parameter(0)
//    public String testGreeting;
//
//    public GreeterTest(String greeting) {
//      this.testGreeting = greeting;
//    }

    @Test
    public void greeterShouldSayHelloWorld() {
        //Greeter greeter = new Greeter(this.testGreeting);
        Greeter greeter = new Greeter("Hello world!");
        assertEquals("Hello world!", greeter.sayHello());
    }
}
