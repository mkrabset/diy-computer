package ivark.diycomputer;


import ivark.diycomputer.instructionset.Compiler;
import ivark.diycomputer.model.Computer;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.List;
import java.util.stream.Collectors;

@Component
@Path("/")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class Api {
    private static final Computer C = new Computer();

    @POST
    @Path("/compiler")
    @Consumes(MediaType.TEXT_PLAIN)
    @Produces(MediaType.TEXT_PLAIN)
    public String compile(InputStream program) throws Exception {
        Compiler compiler = new Compiler(C);
        List<String> lines = compiler.getLines(new InputStreamReader(program));
        List<String> installInstructions = compiler.generateInstallInstructions(lines);
        return installInstructions.stream().collect(Collectors.joining("\n"));
    }
}

