import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";

actor {
  // Challenge 1
  public func add(n : Nat , m : Nat) : async Nat {
    // Calculates a sum
    return n + m;
  };

  // Challenge 2
  public func square(n : Nat) : async Nat {
    // Squares a number "n"
    return n * n;
  };
  
  // Challenge 3
  public func days_to_second(n : Nat) : async Nat {
    // Calulates days to seconds
    return n * 24 * 60 * 60;
  };

  // Challenge 4
  var counter : Nat = 0;
  public func increment_counter(n : Nat) : async Nat {
    // Incrementing the counter by "n"
    counter += n;
    return (counter);
  };
  public func clear_counter() : async () {
    // Clearing the counter
      counter := 0;
      return;
  };

  // Challenge 5
  public func divide(n : Nat, m : Nat) : async Bool{
    // Check if "n" is dividable by "m";
    if((n % m)==0){
      return true;
    }else {
      return false;
    };
  };

  // Challenge 6
  public func is_even(n : Nat) : async Bool{
    // Check if "n" is even;
    if((n % 2)==0){
      return true;
    }else {
      return false;
    };
  };
 
  // Challenge 7
  public func sum_of_array(arr : [Nat]) : async Nat{
    if (arr.size() == 0 ){
      return 0;
    }else{
      var a : Nat = 0;
      for (item in arr.vals()){
          a += item;
    };
    return a;
    };
  };

  // Challenge 8 - find array.max
  public func maximum(arr : [Nat]) : async Nat{
    if(arr.size() == 0){
      return 0;
    }else{
      var val : Nat = 0;
      for(value in arr.vals()){
        if(value > val){
          val := value;
        };
      };
    return val;
    };
  };

  // Challenge 9 - remove a specific value from array
  public func remove_from_array(arr : [Nat], n : Nat) : async [Nat]{
    let f = func(m : Nat) : Bool{
      if(m != n){
        return true;
      }else{
        return false;
      };
    };
    return(Array.filter<Nat>(arr, f))
  };
  
  //Challenge 10 - sort an array
};