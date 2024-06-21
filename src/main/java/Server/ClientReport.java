package Server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class ClientReport implements Runnable {
    
    private admin.AdminReport adminReport;
    private Socket mySocket;
    private Server server;
    private String id;
    private InputStream input;
    private OutputStream output;

    public ClientReport(Socket mySocket, Server server,String id,admin.AdminReport adminReport) {
        this.mySocket = mySocket;
        this.server = server;
        this.id = id;
        this.adminReport = adminReport;
        try {
            this.input = mySocket.getInputStream();
            this.output = mySocket.getOutputStream();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void sendReport(String id) {
        try {
            output.write(id.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        try {
            byte[] buffer = new byte[1024];
            int byteRead;
            while ((byteRead = input.read(buffer)) != -1) {
                String id = new String(buffer, 0, byteRead);
                server.ListReport(id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


