import ballerina.net.http;
import ballerina.lang.system;

@http:configuration {
    basePath: "/eventrecorder"
}
service<http> EventRecorderService {

    @http:POST {}
    @http:Path {
        value: "/insert"    
}
    resource InsertResource (message m) {
        system:println(m);
        reply m;
    }
}
