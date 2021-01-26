public class Main {
    public static void main(String[] args){
        CLinput cli = new CLinput();
        Hight_controll hg;
        int hight = cli.readInt("input the hight of the ground: ");
        hg = new Hight_controll(hight);
        hg.controll();
        hg.print();
    }
}
