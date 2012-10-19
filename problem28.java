public class problem28{
  public static void main(String[] args){
    //int length = 5;
    int length = 1001;

    int[][] numbers = createArray(length);
    int sum = 0;

    for(int i = 0; i < length; i++){
      sum += numbers[i][i];
      sum += numbers[length-i-1][i];
    }
    System.out.println(sum-1);

    /*
    for(int i = 0; i < numbers.length; i++){
      for(int j = 0; j < numbers[i].length; j++){
        System.out.print(numbers[i][j] + " ");
      }
      System.out.println();
    }
    */
  }

  public static int[][] createArray(int n){
    int numbers[][] = new int[n][n];

    int counter = n*n;
    int length = n;

    for(int i = 0; i < (n/2)+1; i++){
      for(int j = n-i-1; j > i-1; j--){
        numbers[i][j] = counter;
        counter--;
      }
      
      for(int j = i+1; j < n-i; j++){
        numbers[j][i] = counter;
        counter--;
      }
      
      for(int j = i+1; j < n-i-1; j++){
        numbers[n-i-1][j] = counter;
        counter--;
      }
      
      for(int j = n-i-1; j > i ; j--){
        numbers[j][n-i-1] = counter;
        counter--;
      }
    }
    return numbers;
  }
}
