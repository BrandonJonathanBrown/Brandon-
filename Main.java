
import com.client.Client_Interface;

import javafx.application.Application;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.scene.image.Image;
/**
 * @author Brandon Jonathan Brown
 */
public class Main extends Application{

	//Launches javafx application
	public static void main(String []args)
	{
		Application.launch(args);
	}
	
	//Sets the stage for the javafx application
	@Override
	public void start(Stage primaryStage) throws Exception {
	
		primaryStage.getIcons().add(new Image(Main.class.getResourceAsStream("_Appicon.png")));
		primaryStage.setScene(new Client_Interface().window());
		primaryStage.setResizable(false);
		primaryStage.isFocused();
		primaryStage.centerOnScreen();
		primaryStage.initStyle(StageStyle.UTILITY);
	    primaryStage.setTitle("");
		primaryStage.show(); 
	} 
	
}
