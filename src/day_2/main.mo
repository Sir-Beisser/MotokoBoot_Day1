import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";

actor{
    
    // Challenge 1 - switch Nat to Nat8
    public  func nat_to_nat8(n : Nat) : async Nat8 {
        return(Nat8.fromNat(n));
    };

    // Challenge 2 - find max() with predefined number(n) of digits
    public  func max_number_with_n_bits(x : Nat) : async Nat{        
        return((2 ** x) -1 );
    };
    
};