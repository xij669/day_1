import Debug "mo:base/Debug";

actor {
    let name : Text = "Motoko";
    let age : Nat = 2;
    let ghost : Bool = true;
    let array1 : [Text] = ["Motoko_0", "is_1", "a_2", "great_3", "language_4", "._5"];
    let array2 : [Nat] = [1, 2, 3, 4, 5];

    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
    public func add_four (number : Nat) : async Nat {
        return (number + 4);
    };
    public func equal_to_one (n : Nat) : async Text {
        if(n == 1) {
            return("n is equal to 1 !");
        }else {
            return ("n is not equal to 1 !");
        };
    };
    public func judge_the_number (n : Nat) : async Text {
        if(n < 1){
            return("n is below 1 !");
        };
        if( n > 1 and n < 3){
            return("n is above 1 and below 3!");
        }else if( n == 3){
            return("n is equal to 3!");
        }else if( n > 3 ){
            return("n is above 3!");
        }else {
            return("n is equal to 1!");
        };
    };
    public func is_n_equal_to_one (n : Nat) : async Text {
        if(n != 1){
            return("n is not equal to 1!");
        }else{
            return("n is equal to 1!");
        };
    };
    public func check_index(n : Nat) : async Text {
        return(array1[n]);
    };

    public func check_size() : async Nat {
        return(array1.size());
    };
    public func test() : async () {
        for (value in array2.vals()){
            Debug.print(debug_show(value))
        };
    };
};
