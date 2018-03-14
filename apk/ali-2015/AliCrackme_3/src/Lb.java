 class Lb extends java.util.TimerTask {
    static final synthetic boolean a;
    final synthetic android.os.Handler b;
    final synthetic String c;
    final synthetic a d;

    static b()
    {
        int v0_2;
        if (a.desiredAssertionStatus()) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        b.a = v0_2;
        return;
    }

    b(a p1, android.os.Handler p2, String p3)
    {
        this.d = p1;
        this.b = p2;
        this.c = p3;
        return;
    }

    public void run()
    {
        dn.b(dn.a());
        if ((android.os.Build$VERSION.SDK_INT < 10) || (!android.os.Debug.isDebuggerConnected())) {
            try {
                byte[] v5_0 = new e().a(this.c);
            } catch (android.os.Handler v0) {
                this.b.sendEmptyMessage(3);
            }
            try {
                if (!v5_0.equals("sos")) {
                    android.os.Handler v0_8 = new java.util.zip.CRC32();
                    v0_8.update(v5_0.getBytes());
                    v0_8.getValue();
                    v5_0.hashCode();
                    android.os.Handler v0_10 = java.security.MessageDigest.getInstance("sha1");
                    try {
                        int v1_2 = javax.crypto.Cipher.getInstance("AES");
                    } catch (android.os.Handler v0_12) {
                        v0_12.printStackTrace();
                    }
                    if ((b.a) || (v1_2 != 0)) {
                        try {
                            v1_2.init(2, new javax.crypto.spec.SecretKeySpec(android.util.Base64.decode("GXiQHT1CZ2elMzwpvvAoPA==".getBytes(), 0), "AES"));
                        } catch (byte[] v2) {
                        }
                        try {
                            byte[] v2_8 = v1_2.doFinal(android.util.Base64.decode("hjdsUjIT5je69WXIZP7Kzw==".getBytes("UTf-8"), 0));
                        } catch (int v1) {
                        } catch (int v1) {
                        }
                        int v6_7 = new String(v2_8);
                        int v1_6 = new byte[1];
                        v1_6[0] = 127;
                        v0_10.update(v1_6);
                        v0_10.update(v5_0.getBytes());
                        int v1_9 = new byte[1];
                        v1_9[0] = 1;
                        v0_10.update(v1_9);
                        int v1_11 = new String(android.util.Base64.encode(v0_10.digest(), 0));
                        android.os.Handler v0_17;
                        if (!v5_0.equals(v6_7)) {
                            v0_17 = v1_11;
                        } else {
                            if (!java.util.Arrays.equals(v1_11.getBytes(), "2398lj2n".getBytes())) {
                                v0_17 = "234";
                            } else {
                                this.b.sendEmptyMessage(0);
                            }
                        }
                        if (!v0_17.equals("lsdf==")) {
                            int v1_15 = v5_0.toCharArray();
                            android.os.Handler v0_23 = v5_0.substring(0, 2).hashCode();
                            if (v0_23 <= 3904) {
                                if ((v0_23 == 3618) && ((v1_15[0] + v1_15[1]) == 168)) {
                                    do {
                                        byte[] v5_9 = new StringBuilder().append(((f) e.getAnnotation(f)).a()).append(((f) a.getAnnotation(f)).a()).toString().getBytes();
                                        if ((v1_15.length - 2) == v5_9.length) {
                                            android.os.Handler v0_39 = 0;
                                            while (v0_39 < v5_9.length) {
                                                if (v1_15[(v0_39 + 2)] == v5_9[v0_39]) {
                                                    v0_39++;
                                                } else {
                                                    android.os.Handler v0_40 = 0;
                                                }
                                                if (v0_40 != null) {
                                                    this.b.sendEmptyMessage(0);
                                                }
                                            }
                                            v0_40 = 1;
                                        }
                                    } while(v2_8 == null);
                                }
                                this.b.sendEmptyMessage(1);
                            } else {
                                this.b.sendEmptyMessage(4);
                            }
                        } else {
                            this.b.sendEmptyMessage(0);
                        }
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    this.b.sendEmptyMessage(2);
                }
            } catch (android.os.Handler v0) {
                this.b.sendEmptyMessage(1);
            }
        } else {
            this.b.sendEmptyMessage(1);
        }
        return;
    }
}
