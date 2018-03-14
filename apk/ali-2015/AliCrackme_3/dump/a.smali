.class public La;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lf;
    a = "1p"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 8

    invoke-static {}, Ldn;->a()Z

    move-result v4

    invoke-static {v4}, Ldn;->b(I)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lb;

    invoke-direct {v1, p0, p2, p1}, Lb;-><init>(La;Landroid/os/Handler;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
