.class public Ld;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcrackme/a3/Main;


# direct methods
.method public constructor <init>(Lcrackme/a3/Main;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Ld;->b:Lcrackme/a3/Main;

    iput-object p2, p0, Ld;->a:Landroid/widget/EditText;

    #disallowed odex opcode
    #invoke-object-init/range {p0 .. p0}, Ljava/lang/Object;-><init>()V
    nop

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Ldn;->a()Z

    move-result v3

    invoke-static {v3}, Ldn;->b(I)V

    iget-object v0, p0, Ld;->b:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :try_start_f
    iget-object v0, p0, Ld;->b:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_3d

    :try_start_18
    iget-object v0, p0, Ld;->b:Lcrackme/a3/Main;

    iget-object v0, v0, Lcrackme/a3/Main;->c:Landroid/widget/Button;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v0, La;

    invoke-direct {v0}, La;-><init>()V

    iget-object v1, p0, Ld;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld;->b:Lcrackme/a3/Main;

    invoke-static {v2}, Lcrackme/a3/Main;->b(Lcrackme/a3/Main;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La;->a(Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    goto :goto_22

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
