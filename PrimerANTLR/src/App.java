import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        // create a CharStream that reads from file
        CharStream input = CharStreams.fromFileName("src/entrada.txt");

        // create a lexer that feeds off of input CharStream
        ExpRegLexer lexer = new ExpRegLexer(input);
        
        // create a buffer of tokens pulled from the lexer
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        
        // create a parser that feeds off the tokens buffer
        ExpRegParser parser = new ExpRegParser(tokens);
                
        // Solicito al parser que comience indicando una regla gramatical
        // En este caso la regla es el simbolo inicial
        // parser.s();
        parser.s();
        
    }
}
