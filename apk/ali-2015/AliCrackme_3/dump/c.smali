.class public Lc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcrackme/a3/Main;


# direct methods
.method public constructor <init>(Lcrackme/a3/Main;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lc;->a:Lcrackme/a3/Main;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-static {}, Ldn;->a()Z

    move-result v3

    invoke-static {v3}, Ldn;->b(I)V

    const/high16 v2, -0x10000

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b4

    :goto_16
    return-void

    :pswitch_17
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :try_start_21
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const/16 v1, 0x67

    iget v2, p1, Landroid/os/Message;->what:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_16

    :catch_2e
    move-exception v0

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    :pswitch_3a
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    invoke-static {v0}, Lcrackme/a3/Main;->a(Lcrackme/a3/Main;)Ljava/util/Random;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    goto :goto_16

    :pswitch_50
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    :pswitch_5b
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    :pswitch_66
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    :pswitch_71
    :try_start_71
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_85

    :goto_7a
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16

    :catch_85
    move-exception v0

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7a

    :pswitch_91
    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    iget-object v1, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lc;->a:Lcrackme/a3/Main;

    invoke-static {v0}, Lcrackme/a3/Main;->a(Lcrackme/a3/Main;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_b0

    const v0, 0x7f040006

    :goto_ab
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_16

    :cond_b0
    const v0, 0x7f040005

    goto :goto_ab

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_17
        :pswitch_3a
        :pswitch_71
        :pswitch_91
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_5b
        :pswitch_66
    .end packed-switch
.end method
