import javafx.application.Application;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
 /**
  * 
  * @author Brandon Jonathan Brown
  *
  */
public class Main extends Application {
 
	//Launches the application
    public static void main(String[] args) {
        Application.launch(args);
    }
 
    @Override
    public void start(Stage primaryStage) {
    	
        game v = new game();
    	primaryStage.getIcons().add(new Image(Main.class.getResourceAsStream("icon.png")));
        primaryStage.setTitle("Ping Pong Game");
        primaryStage.setScene(v.scene());
        primaryStage.centerOnScreen();
        primaryStage.initStyle(StageStyle.UTILITY);
        primaryStage.setResizable(false);
        primaryStage.show();

    }

  

}