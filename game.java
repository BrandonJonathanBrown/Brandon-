																																																																														import javafx.animation.AnimationTimer;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.util.Duration;
import java.util.Random;

/**
 * 
 * @author Brandon Jonathan Brown
 *
 */

public class game {

	//Declaration of variables
	private Pane canvas = new Pane();
	private Random rand = new Random();
	private final double FPS = 0.06;
	private int MoveX = (10*10);
	private int dx = 0;
	private int dy = 0;
	private int points = 0;
	private int Level = 0;
	private int x = 10;
	private int i=0;
	
	
	/**
	 * 
	 * @return Scene
	 */
	public Scene scene()
	{		
			//Rectangle and properties
			Rectangle rect = new Rectangle(30*10,58*10,18*10,5*5);
			rect.setFill(Color.DARKORANGE);
			rect.requestFocus();
		
		
    		canvas.setPrefSize(80*10,60*10);
    		canvas.requestFocus();
        
    		//Text and properties
    		Text GameOver = new Text("Game Over");
   		 	GameOver.setFill(Color.BLACK);
   		 	GameOver.setLayoutX(30*10);
   		 	GameOver.setLayoutY(29*10);
   		 	GameOver.setFill(Color.GREENYELLOW);
   		 	GameOver.setVisible(false);
		 

   		 	//Label and properties
   		 	Label score = new Label("Score " + points);
   		 	score.setLayoutX(25);
   		 	score.setLayoutY(25);	
		 
   		 	Label level = new Label("Level " + Level);
   		 	level.setLayoutX(25);
   		 	score.setLayoutY(25);	
		 
		
   		 			int randomx = rand.nextInt(50*10)+25*10;
	 
		 			//Circle and properties
			 		Circle circle = new Circle();
			 		circle.setLayoutX(randomx); 
			 		circle.setLayoutY(0);
			 		circle.setRadius(22.0f); 
			 		circle.setFill(Color.LIGHTGREEN);
			 		circle.requestFocus();
			      
		
		//Adds nodes to pane
		 canvas.getChildren().addAll(rect,circle,score,GameOver,level);
		 
		 //Adds pane to scene 
		 Scene scene = new Scene(canvas,80*10,60*10,Color.BLACK);
		 scene.getStylesheets().add(game.class.getResource("/GameArt.css").toExternalForm());
	
		 
		 //Timer for game movement
		 Timeline timeline1 = new Timeline(new KeyFrame(Duration.seconds(FPS), 
                new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent t) {
            	
            		//Movement of ball
            		circle.setLayoutX(circle.getLayoutX() + dx);
            		circle.setLayoutY(circle.getLayoutY() + dy);
            	
            		//Movement of ball greater than width to the right
            		if(circle.getLayoutX() >= (scene.getWidth() - circle.getRadius())) 
            		{
            			circle.setLayoutX(circle.getLayoutX() - 5*10);
            			dx=-dx;
            		}
               
            		//Movement of ball less than the width to the left
            		if(circle.getLayoutX() <= (scene.getWidth()-scene.getWidth() + circle.getRadius()))
            		{
            			circle.setLayoutX(circle.getLayoutX() + 5*10);
            			dx = Math.abs(dx);  
            		}
               
            		//Movement of the ball greater than the height downwards
            		if(circle.getLayoutY() >= (scene.getHeight() - circle.getRadius()))
            		{
            			circle.setLayoutY(circle.getLayoutY() - 5*10); 
            			dy=0;
            			dx=0;
            			GameOver.setVisible(true);
            			points = 0;
            			score.setText("Score " + points);
            			level.setText("Level " + Level);
            	 
            		}
              
            		
            		//Movement of the ball greater than the height upwards
            		if(circle.getLayoutY() <= (scene.getHeight()-scene.getHeight()+ circle.getRadius()))
            		{
            			circle.setLayoutY(circle.getLayoutY() +5*10);
            			dy = Math.abs(dy); 
            		}
                         
               
            		//Ball hits bracket then points are added
            		if(circle.intersects(circle.sceneToLocal(rect.localToScene(rect.getBoundsInLocal()))))
            		{
            			circle.setLayoutY(circle.getLayoutY() -25); 
            			i++;
            			points+=(11+i);
            			if(points>=10*x)
            			{
            				x+=10;
            				Level++;
            			}
            				score.setText("Score " + points);
            				level.setText("Level " + Level);
            				dy=-dy;  
            		}
             
            		
            		//Bounds for racket rectangle
            		if(rect.getLayoutX() <= -30*10)
            		{
            			rect.setLayoutX(-30*10);
            		}
            		if(rect.getLayoutX()>=35*10)
            		{
            			rect.setLayoutX(35*10);
            		}
            
            		//Keypresses on the scene for movement of rectangle
            		scene.setOnKeyPressed(new EventHandler<KeyEvent>(){
            		@Override
					public void handle(KeyEvent e)
					{
            			
            			if(e.getCode()==KeyCode.SPACE)
            			{
            				System.out.println("Game Started!");
            				circle.setLayoutX(scene.getHeight()/2);
            				circle.setLayoutY(0);
            				dx=20;
            				dy=20;
            				GameOver.setVisible(false);
            			}
					    if(e.getCode()==KeyCode.LEFT)
            	        {
					    	System.out.println("Left press!");
					    	rect.setLayoutX(rect.getLayoutX() + -MoveX);
            	        }
					    if(e.getCode()==KeyCode.RIGHT)
            	        {
					    	System.out.println("Right press!");
					    	rect.setLayoutX(rect.getLayoutX() + MoveX);
            	        }
					}
            	});
        	};}));
        timeline1.setCycleCount(Timeline.INDEFINITE);
        timeline1.play();
        
		return scene;
    }






	
     	
}
