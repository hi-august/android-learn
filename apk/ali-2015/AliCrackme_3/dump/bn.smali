.class public Lbn;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mobisec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native constByteEncrypt_native([BII)[B
.end method

.method public static native decrypt_native(Ljava/lang/String;I)Ljava/lang/String;
.end method
