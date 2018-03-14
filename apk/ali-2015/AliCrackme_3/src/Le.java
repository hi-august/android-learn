public class Le {
    static java.util.Map a;

    static e()
    {
        e.a = new java.util.HashMap();
        e.a("a", ". _");
        e.a("b", "_ . . .");
        e.a("c", "_ . _ .");
        e.a("d", "_ . .");
        e.a("e", ".");
        e.a("f", ". . _ .");
        e.a("g", "_ _ .");
        e.a("h", ". . . .");
        e.a("i", ". .");
        e.a("j", ". _ _ _");
        e.a("k", "_ . _");
        e.a("l", ". _ . .");
        e.a("m", "_ _");
        e.a("n", "_ .");
        e.a("o", "_ _ _");
        e.a("p", ". _ _ .");
        e.a("q", "_ _ . _");
        e.a("r", ". _ .");
        e.a("s", ". . .");
        e.a("t", "_");
        e.a("u", ". . _");
        e.a("v", ". . . _");
        e.a("w", ". _ _");
        e.a("x", "_ . . _");
        e.a("y", "_ . _ _");
        e.a("z", "_ _ . .");
        e.a("2", ". _ _ _ _");
        e.a("1", ". . _ _ _");
        e.a("3", ". . . _ _");
        e.a("4", ". . . . _");
        e.a("0", ". . . . .");
        e.a("6", "_ . . . .");
        e.a("9", "_ _ . . .");
        e.a("8", "_ _ _ . .");
        e.a("7", "_ _ _ _ .");
        e.a("5", "_ _ _ _ _");
        return;
    }

    public e()
    {
        return;
    }

    static void a(String p4, String p5)
    {
        dn.b(dn.a());
        e.a.put(p5.replaceAll(" ", ""), p4);
        return;
    }

    public String a(String p8)
    {
        IllegalArgumentException v0_4;
        dn.b(dn.a());
        if (!p8.equals("...___...")) {
            StringBuilder v2_1 = new StringBuilder();
            String[] v3 = p8.split("\\s+");
            int v4 = v3.length;
            int v1 = 0;
            while (v1 < v4) {
                IllegalArgumentException v0_7 = ((String) e.a.get(v3[v1]));
                if (v0_7 == null) {
                    throw new IllegalArgumentException();
                } else {
                    v2_1.append(v0_7);
                    v1++;
                }
            }
            v0_4 = v2_1.toString();
        } else {
            v0_4 = "sos";
        }
        return v0_4;
    }
}
