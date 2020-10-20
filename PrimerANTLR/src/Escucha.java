import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.TerminalNode;

/**
 * Override de métodos
 *     Botón derecho -> Source Action -> Override/implement Methods 
 * 
 * Recuerden no tocar los archivos *Listener.java y *BaseListener.java
 * porque se sobreescriben al grabar el *.g4 (* es el nombre del archivo)
 * 
 */

public class Escucha extends ExpRegBaseListener {
    Integer nodos = 0;

    @Override
    public void enterEveryRule(ParserRuleContext ctx) {
        // TODO Auto-generated method stub
        // super.enterEveryRule(ctx);
        nodos += 1;
    }

    @Override
    public void enterInst(ExpRegParser.InstContext ctx) {
        // TODO Auto-generated method stub
        // super.enterInst(ctx);
        System.out.println(ctx.getText());
    }

    @Override
    public void enterProg(ExpRegParser.ProgContext ctx) {
        // TODO Auto-generated method stub
        // super.enterProg(ctx);
        System.out.println("Comienza el parsing...");
    }

    @Override
    public void exitProg(ExpRegParser.ProgContext ctx) {
        // TODO Auto-generated method stub
        // super.exitProg(ctx);
        System.out.println("\tSe visitaron " + nodos + "Nodos\n\tFIN!");
    }

    @Override
    public void visitTerminal(TerminalNode node) {
        // TODO Auto-generated method stub
        // super.visitTerminal(node);
        System.out.println("  -->>" + node.getText() + "<<--");
    }

    @Override
    public void enterBloque(ExpRegParser.BloqueContext ctx) {
        // TODO Auto-generated method stub
        // super.enterBloque(ctx);
        // tablaSimbolos.addContexto();
    }

    @Override
    public void exitBloque(ExpRegParser.BloqueContext ctx) {
        // TODO Auto-generated method stub
        // super.exitBloque(ctx);
        // tablaSimbolos.delContexto();
    }

}
