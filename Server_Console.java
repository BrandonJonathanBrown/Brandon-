package com.server;

import java.io.IOException;
import java.net.ServerSocket;
/**
 * 
 * @author Brandon Jonathan Brown
 *
 */
public class Server_Console
{
	
    public static void main(String[] argv) throws IOException
    {
    	//Declarations of static variables
		int port = 444;
		ServerSocket ss = null;
    	boolean ServerReady = false;
    	
    	//Prints out server status and port
    	System.out.println("Server Running on port " + port); 
    	
    	//Trys to bind to port specified
    	try {
			ss = new ServerSocket(port);
			ServerReady = true;
		} catch (IOException e) {
			e.printStackTrace(); 
		}  
    	
    	//Multithreading for multiply connections
    	while(ServerReady)  
    	{
    		try {
    		Thread ServerThread = new Thread(new Server(ss.accept()));
    		ServerThread.start();
    		} catch (IOException e) {
    			e.printStackTrace();
    		}
    		}
        }
   
    	
    }


