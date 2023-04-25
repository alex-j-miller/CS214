public abstract class WalkingBird extends Bird{
    public WalkingBird() {
        super();
    }

    public WalkingBird(String name){
        super(name);
    }

    public String movement()
    {
        return "walked";
    }
}
