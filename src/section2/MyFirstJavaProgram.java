package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {

	Robot C3PO = new Robot();
	C3PO.setSpeed(100);
	C3PO.setRandomPenColor();
	C3PO.setPenWidth(5);
	C3PO.penDown();
	C3PO.sparkle();
	C3PO.miniaturize();
	for (int i=0;i<9;i++) {
		C3PO.turn(40);
		C3PO.move(40);
		
	}
	//C3PO.turn(90);
	//C3PO.move(100);
	//C3PO.turn(90);
	//C3PO.move(100);
	//C3PO.turn(90);
	//C3PO.move(200);
	//C3PO.turn(90);
	//C3PO.move(200);
	//C3PO.turn(90);
	//C3PO.move(200);
	//C3PO.turn(90);
	//C3PO.move(100);
	C3PO.hide();
	C3PO.unSparkle();

	}
}
