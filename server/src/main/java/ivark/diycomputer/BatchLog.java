package ivark.diycomputer;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.IntNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.LinkedList;

@Component
public class BatchLog {
    static private final long MAX_SIZE = 10000;

    private ObjectMapper mapper;
    private int startId = 0;
    private LinkedList<String> log = new LinkedList<>(Arrays.asList("-- Log start--"));

    public BatchLog(@Autowired ObjectMapper mapper) {
        this.mapper=mapper;
    }

    public synchronized void log(String message) {
        log.add(message);
        if (log.size() > MAX_SIZE) {
            log.remove();
            startId++;
        }
    }

    public synchronized JsonNode getLog(int fromId) {
        ObjectNode result=mapper.createObjectNode();
        ArrayNode logNode=mapper.createArrayNode();
        result.set("log",logNode);
        fromId = Math.max(fromId, startId);
        int startIndex=fromId-startId;
        for (int i=startIndex;i<log.size();i++) {
            logNode.add(new TextNode(log.get(i)));
        }
        result.set("next",new IntNode(startId+log.size()));
        return result;
    }

    public synchronized void reset() {
        log=new LinkedList<>(Arrays.asList("-- Log start--"));
        startId=0;
    }
}
