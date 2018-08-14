package section2;

import javax.swing.JOptionPane;
import org.jointheleague.graphical.robot.Robot;

public class FourSquare {
	
	Robot a = new Robot();

	void go() {

		a.setSpeed(9000);

		a.setPenWidth(5);

		for (int i=0;i<5;i++) {

			a.setRandomPenColor();
	
			drawSquare();
	
			a.turn(90);
		}

	}

	
	void drawSquare() {
		JOptionPane.showMessageDialog(null, "yay! you called the drawSquare() method!");
		for (int i=0;i<5;i++) {
			a.penDown();
			a.move(100);
			a.turn(90);
		}
		
		
	}

	public static void main(String[] args) {
		new FourSquare().go();
	}

}



