import 'dart:math';

class Pig {
  double sum_l = 0 ;
  double sum_g = 0 ;
  double sum_weight = 0;
  double sum_price = 0 ;
  int weight = 0 ;
  int price = 0 ;

  Pig(double L , double G){
    sum_l = (L/100) ;
    sum_g = (G/100) ;
  }

  double get calWeight {
    return sum_weight = (sum_g * sum_g * sum_l * 69.3)  ;
  }

  double get calPrice{
    return sum_price = (sum_weight*112.5) ;
  }
  int get round1{
    return weight = sum_weight.round() ;
  }
  int get round2{
    return price = sum_price.round() ;
  }

}