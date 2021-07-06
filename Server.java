package com.server;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
/**
 * 
 * @author Brandon Jonathan Brown
 *
 */
public class Server implements Runnable {

		//Declaration of variables 
		private Socket connection;
		private BufferedReader br = null;
		private DataOutputStream DataOut = null;
		private DataInputStream DataIn = null;
		private Boolean Running = true;
		private FileOutputStream fos = null;
		private byte[] data = new byte[1024*256];
		private String name = " ";
		private String tracker =" ";   
		
		//bind streams for multithreading
	    public Server(Socket newConnection){this.connection = newConnection;}
	    		 
	    /**
	     * @see Thread for the node  
	     */
	    @Override
		public void run() {
	    	try {
	    		
	    		//socket streams instansitiated 
				this.br = new BufferedReader(new InputStreamReader(this.connection.getInputStream()));
				this.DataOut = new DataOutputStream(new BufferedOutputStream(this.connection.getOutputStream()));
				this.DataIn = new DataInputStream(new BufferedInputStream(this.connection.getInputStream()));
				
				//Lists the directory of node machine
				Directory("Music","MusicLibrary.txt");
				Directory("Pictures","PictureLibrary.txt");
				Directory("Videos","VideoLibrary.txt");
				Directory("Documents","DocumentLibrary.txt");
				Directory("Downloads","DownloadLibrary.txt");  
				
				//Loop for incoming bits from client node
				while(Running) 
				{
					//Input from memory
				    String command = br.readLine();
				    System.out.println(command);
				    
				    //Returns on the third and second word of a string
				    String[] output = command.split(" ");
				    String Command = output[0];
				    System.out.println(Command); 
				    
				  //Switch case statement for command inputs on node
					switch(Command) 
					{
					//send node list of music files
					case"<LISTMUSIC>":
					name = "MusicLibrary.txt";
				    Sendlist(name);
				    tracker = "music";
					break;
					//send node list of pictures files
					case"<LISTPICTURES>":
					name = "PictureLibrary.txt";
					Sendlist(name);
					tracker = "picture";
					break;
					//send node list of videos files
					case"<LISTVIDEOS>":
					name = "VideoLibrary.txt";
					Sendlist(name);
					tracker="video";
					break;
					//send node list of documents files
					case"<LISTDOCUMENTS>":
					name = "DocumentLibrary.txt";
					Sendlist(name);
					tracker="documents";
					break;
					//send node list of download files
					case"<LISTDOWNLOADS>":
					name = "DownloadLibrary.txt";
					Sendlist(name);
					tracker="downloads";
					break;
					//download music from node
					case"<DOWNLOADMUSIC>":
					String [] arr = command.split(" ", 2);
				    String songfilefolder = arr[1];
					System.out.println(songfilefolder);
					tracker = "Music";
					String username = System.getenv("USERNAME");
					ZipDirectory("C:\\Users\\"+username+"\\Music\\"+songfilefolder,songfilefolder,tracker);
					break;
					case"<DOWNLOADPICTURES>":
					String [] arr1 = command.split(" ", 2);
					String picfilefolder = arr1[1];
					System.out.println(picfilefolder);
					tracker = "Pictures";
					String username1 = System.getenv("USERNAME");
					ZipDirectory("C:\\Users\\"+username1+"\\Pictures\\"+picfilefolder,picfilefolder,tracker);
					break;
					case"<DOWNLOADDOCUMENTS>":
					String [] arr11 = command.split(" ", 2);
					String docfilefolder = arr11[1];
					System.out.println(docfilefolder);
					tracker = "Documents";
					String username11 = System.getenv("USERNAME");
					ZipDirectory("C:\\Users\\"+username11+"\\Documents\\"+docfilefolder,docfilefolder,tracker);
					break;
					case"<DOWNLOADVIDEOS>":
					String [] arr111 = command.split(" ", 2);
					String videofilefolder = arr111[1];
					System.out.println(videofilefolder);
					tracker = "Videos";
					String username111 = System.getenv("USERNAME");
					ZipDirectory("C:\\Users\\"+username111+"\\Videos\\"+videofilefolder,videofilefolder,tracker);
					break;
					case"<DOWNLOADDOWNLOADS>":
					String [] arr1111 = command.split(" ", 2);
					String downfilefolder = arr1111[1];
					System.out.println(downfilefolder);
					tracker = "Downloads";
					String username1111 = System.getenv("USERNAME");
					ZipDirectory("C:\\Users\\"+username1111+"\\Downloads\\"+downfilefolder,downfilefolder,tracker);
					break;
					case " ":
					this.DataOut.writeBytes("Syntax for commands:" + "\n"+"List Music" + "\n"+"Download Music");
					this.DataOut.flush();
					break;
					case "<UPLOAD>":
					RetrieveFile();
					break;
					default:
					this.DataOut.writeBytes("Command Not Found!");  
					this.DataOut.flush();
					break;
					}
				}
				
			} catch (IOException e) {
				e.printStackTrace();
			}
	    	
		}
	    /**
	     * @apiNote gets file from socket and bufferreader
	     */
	    private void RetrieveFile() {
			
			try {
				//Get file name from server
				String sFileName = br.readLine();
				
				//Get file size
				int lFileSize = Integer.parseInt(br.readLine());
				
				//Create file for inputing data
				FileOutputStream fos = new FileOutputStream("data/server/" + sFileName+".zip");
				byte[] buffer = new byte[4096^1024];
				//File variables
				int filesize = lFileSize;
				int read = 0;
				int totalRead = 0;
				int remaining = filesize;
				//Loop through file to write bytes
				while((read = DataIn.read(buffer, 0, Math.min(buffer.length, remaining))) > 0) {
					totalRead += read;
					remaining -= read;
					fos.write(buffer, 0, read);
				}
				//close file and say how many bytes
				fos.close();
				System.out.println("Megabytes " + (long)totalRead/1000000 + " read");
				System.out.println("\n Download Finished: " + sFileName);
			}
			catch(Exception ex)
			{
				System.err.println("File failed to download!");
			}
	}
		

	     
	/**
	 * 
	 * @param sFileName
	 * @throws IOException
	 */
	private void SendFile(String directory,String Foldername) throws IOException {
	File SelectedFile = new File(Foldername+".zip");
    	
    	//Send file name to client and length
    	try {
			DataOut.writeBytes(Foldername + "\n");
			DataOut.flush();
			DataOut.writeBytes(Long.toString(SelectedFile.length()) + "\n");
			DataOut.flush();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    	
    	
    	try {
			
    		FileInputStream FIS = new FileInputStream(SelectedFile);
    		byte[] buffer = new byte[4096^100];
    		
    		while (FIS.read(buffer) > 0) {
    			DataOut.write(buffer);
    		}
    		
    		FIS.close();
    		DataOut.flush();	
		
		
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			e.getMessage();
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 
	 * @param name
	 * @throws IOException 
	 */
	private void Sendlist(String name) throws IOException
	{
		ArrayList<String> content = getFileList(name);
		int index = 1;
			for (String v : content) {
				index+=1;
				DataOut.writeBytes(index+") " + v + ";");
			}
			DataOut.writeBytes("\n");
			DataOut.flush();
	}
	
	/**
	 * 
	 * @param name
	 * @return
	 */
	 private ArrayList<String> getFileList(String name)
	    {
		 //Array of strings
			ArrayList<String> result = new ArrayList<String>();
			File lstFile = new File("data/server/"+name);
			try
			{
				//Reads in a file
				Scanner scan = new Scanner(lstFile);
				//Readd in each line of file
				while(scan.hasNext()) {
					result.add(scan.nextLine());
				}
				scan.close();
			}	    
			catch(IOException ex)
			{
			ex.printStackTrace();
			}
			return result;
	    }
	
	
	/**
	 * 
	 * @param type
	 * @param name
	 * @throws IOException
	 */
	public void Directory(String type,String name) throws IOException
	{
		//Array list of strings and username for machine
		ArrayList<String> list = new ArrayList<String>();
		String user = System.getenv("USERNAME");
		
		//Creates a file list for each directory
		File content = new File("C:\\Users\\"+user+"\\"+type);
		
		//Creating lists and writing to a file
		for(String tunes:content.list())
		{ 
		list.add(tunes+"\n");
		}
		fos = new FileOutputStream("data/server/"+name);
		for(int i=0;i<list.size();i++)  
		{
		 data=list.get(i).getBytes();  
		 fos.write(data);
		 fos.flush();
		}
		//Close file
		fos.close();	
	}
/**
 * 
 * @param directory
 * @param sff
 * @throws IOException
 */
	private void ZipDirectory(String directory,String sff,String genre) throws IOException
	{
	 	String sourceFile = directory;
        FileOutputStream fos = new FileOutputStream(sff+".zip");
        ZipOutputStream zipOut = new ZipOutputStream(fos);
        File fileToZip = new File(sourceFile);
        zipFile(fileToZip, fileToZip.getName(), zipOut);
        zipOut.close();
        fos.close();
		SendFile(genre,sff);
	}
    /**
     * 
     * @param fileToZip
     * @param fileName
     * @param zipOut
     * @throws IOException
     */
    private static void zipFile(File fileToZip, String fileName, ZipOutputStream zipOut) throws IOException {
   
        if (fileToZip.isHidden()) {
            return;
        }
        if (fileToZip.isDirectory()) {
            if (fileName.endsWith("/")) {
                zipOut.putNextEntry(new ZipEntry(fileName));
                zipOut.closeEntry();
            } else {
                zipOut.putNextEntry(new ZipEntry(fileName + "/"));
                zipOut.closeEntry();
            }
            File[] children = fileToZip.listFiles();
            for (File childFile : children) {
                zipFile(childFile, fileName + "/" + childFile.getName(), zipOut);
            }
            return;
        }
        FileInputStream fis = new FileInputStream(fileToZip);
        ZipEntry zipEntry = new ZipEntry(fileName);
        zipOut.putNextEntry(zipEntry);
        byte[] bytes = new byte[1024^100];
        int length;
        while ((length = fis.read(bytes)) >= 0) {
            zipOut.write(bytes, 0, length);
        }
        fis.close();
    }
	
	
}

	
	
    	
