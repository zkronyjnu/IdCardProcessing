/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dblogin;

/**
 *
 * @author Rony
 */
public class randomname {

    String a[] = {
        "a", "b", "c", "d",
        "e", "f", "g", "h",
        "i", "j", "k", "l", "m",
        "n", "o", "p", "q", "r",
        "s", "t", "u", "v", "w", "x",
        "y", "z",
        "0", "1", "2", "3", "4",
        "5", "6", "7", "8", "9"
    };

    public String makeRandom() {
        String str = "";
        for (int i = 0; i < 50; i++) {
            str += a[(int)(Math.random() * a.length)];
        }
        return str;
    }
}
