package tools;

import javax.xml.crypto.Data;

public class DataBox {
    private String x;
    private String y;
    private String r;
    private boolean wasHit;
    private long scriptTime;

    public String getX() {
        return x;
    }

    public String getY() {
        return y;
    }

    public String getR() {
        return r;
    }

    public boolean isWasHit() {
        return wasHit;
    }

    public long getScriptTime() {
        return scriptTime;
    }

    public DataBox(String x, String y, String r, boolean wasHit, long scriptTime){
        this.x = x;
        this.y = y;
        this.r = r;
        this.wasHit = wasHit;
        this.scriptTime = scriptTime;
    }
}
