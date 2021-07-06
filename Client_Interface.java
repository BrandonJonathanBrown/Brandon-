package com.client;

import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.Alert.AlertType;
import javafx.geometry.*;

/**
 * 
 * @author Brandon Jonathan Brown
 *
 */

public class Client_Interface extends StackPane
{
	//Declaration of variables
	private Button Download;
	private Button Upload;
	private Button Content;
	private Button List;
	private TextArea tf = null;
	private Text OnOff;
	private Text Status;
	private Menu menu;
	private MenuItem Themes,File,Exit,ClearScreen;
	private MenuBar mb;
	public String command;
	private Socket Connection = null;
	private InputStream stin= null;
	private OutputStream stout = null;
	private BufferedReader br = null;
	private PrintWriter pw = null;
	private DataInputStream DataIn = null;
	private DataOutputStream DataOut = null;
	private String genre= " ";
		
	//Controls regarding menubar
	private VBox menus()
	{
		this.menu = new Menu("Options"); 
		this.mb = new MenuBar();
		this.menu.getItems().addAll(Themes,Exit,File,ClearScreen); 
		this.OnOff.setId("con");
		this.Status.setId("sta");
		this.mb.getMenus().add(menu);
		VBox vb = new VBox(mb);
		return vb;
	}
	
	
	//Constuctor
	public Client_Interface() throws UnknownHostException, IOException 
    {
		//Socket connections and input and output streams
		Connection = new Socket("localhost",444);
		stin= Connection.getInputStream();
		stout = Connection.getOutputStream();
		br = new BufferedReader(new InputStreamReader(stin));
		pw = new PrintWriter(new OutputStreamWriter(stout));
		DataIn = new DataInputStream(Connection.getInputStream());
		DataOut = new DataOutputStream(Connection.getOutputStream());
		this.Status = new Text("Status");
		String q = "-------------";
		this.OnOff = new Text (q);
		this.OnOff.setFill(Color.WHITE);
		if(!Connection.isClosed())
		{
		String ss ="Connected";
		this.OnOff = new Text(ss);
		this.OnOff.setFill(Color.WHITE);
		}
		else
		{
		String ss ="Disconnected";
		this.OnOff = new Text(ss);
		this.OnOff.setFill(Color.WHITE);
		}
    }
	
	//Scene to be put on stage
	public Scene window()
	{
		//Scene properties as well as stackpane properties
		Scene window = new Scene(this,55*6.4,29*21);
		window.getStylesheets().add(Client_Interface.class.getResource("/Decorations.css").toExternalForm());
		  this.setPadding(new Insets(0, 0, 10, 0)); 
		   this.setMinSize(400,200); 
		   this.setBackground(new Background(new BackgroundFill(Color.DARKGRAY, CornerRadii.EMPTY, Insets.EMPTY)));
		    
		   //Properties for controls
			this.tf = new TextArea();
			this.tf.setMaxSize(20*14,300); 
			
			//Download control for node
			Download = new Button("Download");
			 Download.setOnAction(e->{   
				String r = this.tf.getText();
				 this.tf.setText("DOWNLOAD"+r);
				 String q = tf.getText().replaceAll("\n", System.getProperty("line.separator"));
				   String [] arr = q.split(" ", 2);
				    String a = arr[0]; 
				    String b = arr[1];
				 pw.println("<"+a.toUpperCase()+"> "+b);
				 pw.flush();	
			    //Alert box
				 Alert alert = new Alert(AlertType.INFORMATION);
				 alert.setTitle("File Download");
				 alert.setHeaderText(null);
				 alert.setContentText("Are You sure you want to download the file or folder?");
				 alert.showAndWait();
				//Gets file from node
				 RetrieveFile();
	 });
			 
			 //Clears the screen
			 this.ClearScreen = new MenuItem("Clear");
			 this.ClearScreen.setOnAction(e->{
				 this.tf.setText("");
			 });
			
			 //Upload control for node
			Upload = new Button("Upload");
			this.Upload.setOnAction(e->{ 
				try {
					 pw.println("<UPLOAD>");
					 pw.flush();
					SendFile("","YSIV");
				} catch (IOException e1) {
					e1.getMessage();
					e1.printStackTrace();
				}
			});
			
			//Display content and directories available
			Content = new Button("Help");
			this.Content.setOnAction(e->{
				this.tf.setText("[Select Directories] " + "\n" + "1.Music"  + "\n" + "2.Videos"  + "\n" + "3.Pictures"  + "\n" + "4.Documents"  + "\n" + "5.Downloads" +"\n");
				this.tf.appendText("\n"+ "Syntax: " +"\n" + "('DOWNLOADMUSIC The Art of Translation')" + "\n" + "('LISTVIDEOS')");	
			});
			
			//See users connected to server
			List = new Button("Folders");
			this.List.setOnAction(e->{
				genre = this.tf.getText();
				this.tf.setText("LIST"+genre);
				 String x = tf.getText().replaceAll("\n", System.getProperty("line.separator"));
				  //String[] output = x.split(" ");
				    //String a =  output[0];
				    //String b = output[1];
				pw.println("<"+x.toUpperCase()+">");
				pw.flush();
					try {
						String sInn;
						sInn = br.readLine();
						String lineSec[] = sInn.split(";");
						for(String s : lineSec) {
							tf.appendText("\n" + s); 
						}
					} catch (IOException e1) {
						e1.getMessage();
						e1.printStackTrace();
					}
			
			});
			
			//Change theme for application feel
			this.Themes = new MenuItem("Themes"); 
				this.Themes.setOnAction(e->{
					
				});
				
				//Exit application
				this.Exit = new MenuItem("Exit");
				this.Exit.setOnAction(e->{ 
					try {
						if(!(Connection==null)) 
						{
						System.out.println("Closing client ....");
						Connection.close();
						System.exit(1);
						}
					} catch (UnknownHostException i) {
						i.printStackTrace();
						i.getMessage();
					} catch (IOException i) {
						i.printStackTrace();
						i.getMessage();
					}
				});
				
				//Choose a file 
				this.File = new MenuItem("File");
				this.File.setOnAction(e->{
				
				});
				
				//Radio buttons for choice of directory
		        RadioButton Music = new RadioButton("Music"); 
		        RadioButton Pictures = new RadioButton("Pictures"); 
		        RadioButton Videos = new RadioButton("Videos");
		        RadioButton Documents = new RadioButton("Docs"); 
		        RadioButton Downloads = new RadioButton("Downloads");
		        
		        //Sets the genre on the socket out to specfied button
		        Music.setOnAction(e->{
		        	this.tf.appendText("MUSIC");
		        });
		        Videos.setOnAction(e->{
		        	this.tf.appendText("VIDEOS");
		        });
		        Pictures.setOnAction(e->{
		        	this.tf.appendText("PICTURES");
		        });
		        Documents.setOnAction(e->{
		        	this.tf.appendText("DOCUMENTS");
		        });
		        Downloads.setOnAction(e->{
		        	this.tf.appendText("DOWNLOADS");
		        });
		        
		
				
				//allignment of controls
			this.setAlignment(tf,Pos.CENTER);
			this.setAlignment(Content,Pos.BOTTOM_RIGHT);
			this.setAlignment(Download,Pos.BOTTOM_LEFT);
			this.setAlignment(OnOff,Pos.TOP_CENTER);
			this.setAlignment(Upload,Pos.BOTTOM_RIGHT);
			this.setAlignment(Status,Pos.TOP_CENTER);
			this.setAlignment(List,Pos.BOTTOM_LEFT);
			this.setAlignment(menus(),Pos.TOP_LEFT);
			
			//Positioning of controls
			int y = 130;
			Music.setTranslateY(y-5);
			Music.setTranslateX(-120); 
			Pictures.setTranslateY(y-10);
			Pictures.setTranslateX(-60);
			Videos.setTranslateY(y-7);
			Videos.setTranslateX(0);
			Documents.setTranslateY(y);
			Documents.setTranslateX(60);
			Downloads.setTranslateY(y-20);
			Downloads.setTranslateX(120);
			Upload.setTranslateY(-20);
			Upload.setTranslateX(-50);
			Download.setTranslateY(-20);
			Download.setTranslateX(50);
			OnOff.setTranslateY(65);
			Status.setTranslateY(40);
			List.setTranslateX(50);
			List.setTranslateY(-70);
			Content.setTranslateX(-50);
			Content.setTranslateY(-70);
			tf.setTranslateY(-55); 
			menus().setTranslateY(0);
			
			
			//Adding controls to stackpane
			this.getChildren().add(menus());	
			this.getChildren().add(Status);
			this.getChildren().add(OnOff);
			this.getChildren().add(Content);
			this.getChildren().add(Download);
			this.getChildren().add(Upload);
			this.getChildren().add(List);
			this.getChildren().add(tf);
			this.getChildren().addAll(Music,Pictures,Documents,Downloads,Videos);
			
			//Return scene
			return window; 
			
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
			e1.getMessage();
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
private void RetrieveFile() {
		
		try {
			//Get file name from server
			String sFileName = br.readLine();
			
			//Get file size
			int lFileSize = Integer.parseInt(br.readLine());
			
			//Create file for inputing data
			FileOutputStream fos = new FileOutputStream("data/client/" + sFileName+".zip");
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
			this.tf.setText("Megabytes " + (long)totalRead/1000000 + " read");
			this.tf.appendText("\n Download Finished: " + sFileName);
		}
		catch(Exception ex)
		{
			System.err.println("File failed to download!");
		}
}
	

}
	

