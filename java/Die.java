//********************************************************************
//  Represents one die (singular of dice) with faces showing values
//  between 1 and 6.
//********************************************************************

public class Die
{
   private int MAX = 6;  // maximum face value
   private int faceValue;      // current value showing on the die

   //-----------------------------------------------------------------
   //  Constructor: Sets the initial face value.
   //-----------------------------------------------------------------
   public Die() {
      faceValue = 6;
      this.roll();
   }
   public Die(int sides) {
      MAX = sides;
      this.roll();
   }

   //-----------------------------------------------------------------
   //  Rolls the die and returns the result.
   //-----------------------------------------------------------------
   public int roll() {
      // Math.random()
      //  Returns a double value with a positive sign, greater than or equal
      //  to 0.0 and less than 1.0. Returned values are chosen pseudorandomly
      //  with (approximately) uniform distribution from that range.
      //  0.0	6	0.0	1.0
      //  0.1	6	0.6	1.6
      //  0.9	6	5.4	6.4
      //  0.4	6	2.4	3.4
      //  0.2	6	1.2	2.2
      faceValue = (int)(Math.random() * MAX) + 1;
      return faceValue;
   }

   //-----------------------------------------------------------------
   //  Face value mutator ( setter method ).
   //-----------------------------------------------------------------
   public void setFaceValue(int value) {
      faceValue = value;
   }

   //-----------------------------------------------------------------
   //  Face value accessor ( getter method ).
   //-----------------------------------------------------------------
   public int getFaceValue() {
      return faceValue;
   }

   //-----------------------------------------------------------------
   //  Returns a string representation of this die.
   //-----------------------------------------------------------------
   public String toString() {
      String result = Integer.toString(faceValue);

      return result;
   }
}
