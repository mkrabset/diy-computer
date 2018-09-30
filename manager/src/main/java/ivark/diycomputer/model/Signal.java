package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public class Signal {
    public static final Signal DUMMY_ACTIVE_LOW=new Signal("DUMMY_AL",false);
    public static final Signal DUMMY_ACTIVE_HIGH=new Signal("DUMMY_AH",true);


    public Module owner;
    public final String name;
    public final boolean activeValue;

    public Signal(String name, boolean activeValue) {
        this.name=name;
        this.activeValue=activeValue;
    }

    public String fullName() {
        return owner.name+"."+name;
    }

    public String descr() {
        return owner.name+"."+name+" (active "+(activeValue?"HIGH":"LOW")+")";
    }

    public String toString() {
        return name;
    }
}