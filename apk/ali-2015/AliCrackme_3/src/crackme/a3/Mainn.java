package crackme.a3;
public class Mainn {
    public java.util.ArrayList m_params;
    private int m_params_index;

    static Mainn()
    {
        System.loadLibrary("mobisec");
        return;
    }

    public Mainn()
    {
        this.m_params = new java.util.ArrayList();
        this.m_params_index = 0;
        return;
    }

    private void clear()
    {
        this.m_params_index = 0;
        this.m_params.clear();
        return;
    }

    private native boolean translateBoolean();

    private native byte translateByte();

    private native char translateChar();

    private native double translateDouble();

    private native float translateFloat();

    private native int translateInt();

    private native long translateLong();

    private native Object translateObject();

    private native short translateShort();

    private native void translateVoid();

    public void setAlgorithm(int p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_int = p3;
        v0_1.type = 10;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(byte p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_byte = p3;
        v0_1.type = 1;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(char p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_char = p3;
        v0_1.type = 2;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(double p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_double = p3;
        v0_1.type = 7;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(float p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_float = p3;
        v0_1.type = 6;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(int p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_int = p3;
        v0_1.type = 4;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(long p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_long = p3;
        v0_1.type = 5;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(Object p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_object = p3;
        v0_1.type = 9;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(String p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_string = p3;
        v0_1.type = 8;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(short p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_short = p3;
        v0_1.type = 3;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public void setParams(boolean p3)
    {
        crackme.a3.Mainn$Params v0_1 = new crackme.a3.Mainn$Params(this);
        v0_1.m_boolean = p3;
        v0_1.type = 0;
        this.m_params.add(v0_1);
        this.m_params_index = (this.m_params_index + 1);
        return;
    }

    public boolean translateBoolean(String p3, Object p4)
    {
        boolean v0 = this.translateBoolean(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public byte translateByte(String p3, Object p4)
    {
        byte v0 = this.translateByte(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public char translateChar(String p3, Object p4)
    {
        char v0 = this.translateChar(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public double translateDouble(String p4, Object p5)
    {
        double v0 = this.translateDouble(p4, p5, this.m_params);
        this.clear();
        return v0;
    }

    public float translateFloat(String p3, Object p4)
    {
        float v0 = this.translateFloat(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public int translateInt(String p3, Object p4)
    {
        int v0 = this.translateInt(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public long translateLong(String p4, Object p5)
    {
        long v0 = this.translateLong(p4, p5, this.m_params);
        this.clear();
        return v0;
    }

    public Object translateObject(String p3, Object p4)
    {
        Object v0 = this.translateObject(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public short translateShort(String p3, Object p4)
    {
        short v0 = this.translateShort(p3, p4, this.m_params);
        this.clear();
        return v0;
    }

    public void translateVoid(String p2, Object p3)
    {
        this.translateVoid(p2, p3, this.m_params);
        this.clear();
        return;
    }
}
