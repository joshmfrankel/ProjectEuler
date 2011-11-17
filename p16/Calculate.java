import java.math.BigInteger;
import java.util.Scanner;

public class Calculate {
	
	public static int count = 0;
	
	public static void main(String[] args){
		
		Scanner in = new Scanner(System.in);
		
		int choice;
		System.out.println("1 - factorial, 2 - power");
		choice = in.nextInt();
		in.close();
		
		long startTime = System.currentTimeMillis();
		
		if(choice == 1){
			BigInteger number = new BigInteger("100");
			number = sumDigits(fx(number));
			long totalTime = System.currentTimeMillis() - startTime;
			System.out.println("Digit Sum: " + number + " @ " + totalTime + "ms with " + count + " iterations");
		}
		else if(choice == 2){
			BigInteger base = new BigInteger("2");
			int power = 1000;
			BigInteger number = base.pow(power);
			number = sumDigits(number);
			System.out.println(number);
		}
		else {
			System.out.println("Wrong Choice");
		}
	}
	
	public static BigInteger fx(BigInteger number){
		count++;
		if(number.equals(BigInteger.ONE))
			return number;
		else {
			return number.multiply((fx(number.subtract(BigInteger.ONE))));
		}
	}
	
	public static BigInteger sumDigits(BigInteger n){
		int z = n.compareTo(BigInteger.ONE);
		
		count++;
		if(z <= 0)
			return n;
		else
			return (n.remainder(BigInteger.TEN)).add((sumDigits(n.divide(BigInteger.TEN))));
	}
}