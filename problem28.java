public class problem28{
  public static void main(String[] args){
    int numbers[][] = new int[5][5];
    //int numbers[][] = new int[1001][1001];

    int counter = numbers.length * numbers[1].length;
    int n = numbers.length;
    int length = 1001;

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

    for(int i = 0; i < numbers.length; i++){
      for(int j = 0; j < numbers[i].length; j++){
        System.out.print(numbers[i][j] + " ");
      }
      System.out.println();
    }
  }
}
