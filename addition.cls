public  class addition {

    public integer num1 { get; set; }
    public integer num2 { get; set; }
    public integer num3 { get; set; }

    public integer additionvalue { get; set; }  
    public void myAdditionMethod(){
        additionValue = num1+num2+num3;
    }
    
    public void mysubmethed(){
        additionValue= num1-num2-num3;
    }
    
    public void mymulmethed(){
    additionValue=num1*num2*num3;
    }

    public PageReference add() {
        return null;
    }    
}