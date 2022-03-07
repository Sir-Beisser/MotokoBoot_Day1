import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";

actor{
    
    // Challenge 1 - switch Nat to Nat8
    public  func nat_to_nat8(n : Nat) : async Nat8 {
        return(Nat8.fromNat(n));
    };

    // Challenge 2 - find max() with predefined number(n) of digits
    public  func max_number_with_n_bits(x : Nat) : async Nat{        
        return((2 ** x) -1 );
    };
    
    // Challenge 3 - Show decimal number in its bit combination.Nat
    public func decimal_to_bit(x : Nat) : async Text {
        var result : Text ="";
        for(i in Inter.range(0, x)){
            result.Text.concat((x % 2) : Text, result : Text);
            x := x / 2;
        };
        return result;
    };
};