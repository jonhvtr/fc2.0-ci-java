import com.jonhvtr.Calculadora;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculadoraTest {
    @Test
    public void testCalculadora() {
        Calculadora calc = new Calculadora();
        int resultado = calc.soma(15, 15);
        assertEquals(30, resultado);
    }
}
