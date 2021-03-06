import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestVolunteer {

    Volunteer volunteer1;

    @Before
    public void setUp() throws Exception {
        volunteer1 = new Volunteer("Tara");
    }

    @Test
    public void hasName() {
        assertEquals("Tara", volunteer1.getName());
    }

    @Test
    public void hasWork() {
        assertEquals("I'm doing all the hard work", volunteer1.work());
    }
}
