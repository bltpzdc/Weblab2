package tools;

public class HitChecker {
    public boolean wasHit(String xCoord, String yCoord, String radius){
        xCoord = xCoord.replace(",", ".");
        double x = Double.parseDouble(xCoord);
        int y = Integer.parseInt(yCoord);
        int r = Integer.parseInt(radius);

        if (x >= 0 && y >= 0) return x <= r && y <= r;
        else if (x <= 0 && y >= 0) return Math.pow(x, 2) + Math.pow(y, 2) <= Math.pow(r, 2);
        else if (x <= 0 && y <= 0) return -x - r <= y;
        else return false;
    }
}
