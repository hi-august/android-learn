.class public Lfn;
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

.method public static getResId_java(I)I
    .registers 2

    const/high16 v0, 0x10000

    sub-int v0, p0, v0

    return v0
.end method

.method public static native getResId_native(Ljava/lang/String;)I
.end method
