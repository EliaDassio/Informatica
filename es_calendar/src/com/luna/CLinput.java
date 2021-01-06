package com.luna;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CLinput {
    private BufferedReader br;

    CLinput(){
        InputStreamReader isr=new InputStreamReader(System.in);
        this.br=new BufferedReader(isr);
    }
    public String readString(String promt) {
        String ris=null;

        while(ris == null){
            System.out.print(promt);
            try {
                ris=br.readLine();
            } catch (Exception e){
                System.out.println("La stringa inserita non va bene");
            }
        }
        return ris;
    }

    public int readInt(String promt){
        int ris=0;
        boolean ok=false;
        while(ok==false){
            System.out.print(promt);
            try {
                ris=Integer.parseInt(br.readLine());
                ok = true;
            } catch (Exception e){
                System.out.println("il numero inserito non va bene");
            }
        }
        return ris;
    }

    public float readFloat(String promt) {
        float ris = 0;
        boolean ok = false;
        while (ok == false) {
            System.out.print(promt);
            try {
                ris = Float.parseFloat(br.readLine());
                ok = true;
            } catch (Exception e) {
                System.out.println("il numero inserito non va bene");
            }
        }
        return ris;
    }

    public char readChar(String promt) {
        char ris='\0';
        boolean ok = false;
        while (ok == false) {
            System.out.print(promt);
            try {
                String in=br.readLine();
                if (in.length()==1) {
                    ris=in.charAt(0);
                    ok = true;
                }
            } catch (Exception e) {
                System.out.println("il numero inserito non va bene");
            }
        }
        return ris;
    }
}