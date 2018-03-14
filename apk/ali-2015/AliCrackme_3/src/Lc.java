public class Lc extends android.os.Handler {
    final synthetic crackme.a3.Main a;

    public c(crackme.a3.Main p1, android.os.Looper p2)
    {
        this.a = p1;
        this(p2);
        return;
    }

    public void handleMessage(android.os.Message p5)
    {
        dn.b(dn.a());
        this.a.b.setEnabled(1);
        switch (p5.what) {
            case 0:
                this.a.a.setTextColor(-16776961);
                try {
                    this.a.a.setText((103 / p5.what));
                } catch (android.widget.TextView v0) {
                    this.a.a.setText(2130968586);
                }
                break;
            case 1:
                this.a.a.setTextColor(-65536);
                switch (crackme.a3.Main.a(this.a).nextInt(3)) {
                    case 0:
                        this.a.a.setText(2130968583);
                        break;
                    case 1:
                        this.a.a.setText(2130968585);
                        break;
                    case 2:
                        this.a.a.setText(2130968584);
                        break;
                    default:
                }
                break;
            case 2:
                try {
                    this.a.a.setTextColor(-65536);
                } catch (android.widget.TextView v0) {
                    this.a.a.setTextColor(-7829368);
                }
                this.a.a.setText(2130968580);
                break;
            case 3:
                android.widget.TextView v0_9;
                this.a.a.setTextColor(-65536);
                if (!crackme.a3.Main.a(this.a).nextBoolean()) {
                    v0_9 = 2130968581;
                } else {
                    v0_9 = 2130968582;
                }
                this.a.a.setText(v0_9);
                break;
        }
        return;
    }
}
