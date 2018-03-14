public class Ld implements android.view.View$OnClickListener {
    final synthetic android.widget.EditText a;
    final synthetic crackme.a3.Main b;

    public d(crackme.a3.Main p1, android.widget.EditText p2)
    {
        this.b = p1;
        this.a = p2;
        return;
    }

    public void onClick(android.view.View p5)
    {
        dn.b(dn.a());
        this.b.b.setEnabled(0);
        try {
            this.b.a.setText("");
            try {
                this.b.c.setText(2130968577);
            } catch (a v0) {
                new a().a(this.a.getText().toString(), crackme.a3.Main.b(this.b));
            }
            return;
        } catch (a v0) {
            throw new RuntimeException();
        }
    }
}
