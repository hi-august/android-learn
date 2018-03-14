package crackme.a3;
public class Main extends android.app.Activity {
    public android.widget.TextView a;
    public android.widget.Button b;
    public android.widget.Button c;
    private java.util.Random d;
    private android.os.Handler e;

    public Main()
    {
        this.d = new java.util.Random();
        this.e = new c(this, android.os.Looper.myLooper());
        return;
    }

    public static synthetic java.util.Random a(crackme.a3.Main p2)
    {
        dn.b(dn.a());
        return p2.d;
    }

    public static synthetic android.os.Handler b(crackme.a3.Main p2)
    {
        dn.b(dn.a());
        return p2.e;
    }

    public void onCreate(android.os.Bundle p5)
    {
        dn.b(dn.a());
        super.onCreate(p5);
        this.setContentView(2130903040);
        this.b = ((android.widget.Button) this.findViewById(2131034115));
        this.a = ((android.widget.TextView) this.findViewById(2131034116));
        this.b.setOnClickListener(new d(this, ((android.widget.EditText) this.findViewById(2131034114))));
        return;
    }

    public void onPause()
    {
        dn.b(dn.a());
        super.onPause();
        android.os.Process.killProcess(android.os.Process.myPid());
        return;
    }
}
