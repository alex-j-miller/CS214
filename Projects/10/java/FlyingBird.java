public class FlyingBird extends Bird{
    public FlyingBird() {
        super();
    }

    public FlyingBird(String name){
        super(name);
    }


    public String movement()
    {
        return "flew";
    }
}
