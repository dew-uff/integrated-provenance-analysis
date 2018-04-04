package utils;

import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.factory.GraphDatabaseFactory;

public class ProvenanceUtil {

    //private static final String DB_PATH ="C:/CSPA/neo4j-community-1.7.2/data/data-20151127/"; // "C:/data/";//
    private static GraphDatabaseService graphDb = null;
    
    public static GraphDatabaseService getConnection(String DB_PATH) throws ProvenanceException {
        try {
            if (graphDb == null) {                     
                graphDb = new GraphDatabaseFactory().newEmbeddedDatabase(DB_PATH); //EmbeddedReadOnlyGraphDatabase(DB_PATH);
            }
            return graphDb;
        } catch (Exception ne) {
            throw new ProvenanceException("Cannot locate Neo4j connection: " + ne.getMessage());
        }

    }
}
