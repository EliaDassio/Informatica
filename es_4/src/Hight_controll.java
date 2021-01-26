public class Hight_controll {
    private int hight;
    private int type;
    Hight_controll(int hight){
        this.hight = hight;
        this.type = 2;
    }
    public void controll(){
        if (hight < 300 || hight <= 0){
            type = 1;
        }
        if (hight >= 700){
            type = 3;
        }
    }
    public void print(){
        if (type == 1){
            System.out.println("pianura");
        }
        if (type == 2){
            System.out.println("collina");
        }
        if (type == 3){
            System.out.println("montagna");
        }
    }
}
