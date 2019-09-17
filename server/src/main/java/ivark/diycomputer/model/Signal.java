package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public abstract class Signal {
    public static final ActiveLowSignal DUMMY_ACTIVE_LOW=new ActiveLowSignal("DUMMY_AL");
    public static final ActiveHighSignal DUMMY_ACTIVE_HIGH=new ActiveHighSignal("DUMMY_AH");


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

    static public class ActiveHighSignal extends Signal {
        public ActiveHighSignal(String name) {
            super(name, true);
        }
    }

    static public class ActiveLowSignal extends Signal {
        public ActiveLowSignal(String name) {
            super(name, false);
        }
    }
}