public class ClassName {



 public ClassName(){
       firstButton = true;
       secondButton = true;
   }

    public boolean secondButton { get; set; }

    public void button2Action() {
        firstButton = true;
       secondButton = false;
    }


    public boolean firstButton { get; set; }

    public void button1Action() {
        firstButton = false;
       secondButton = true;
    }

}