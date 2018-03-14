.class public Lcrackme/a3/Main;
.super Landroid/app/Activity;


# annotations
.annotation runtime Lf;
    a = "eLRZo3sHLzbI1D+o3LFWrg=="
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field private d:Ljava/util/Random;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcrackme/a3/Main;->d:Ljava/util/Random;

    new-instance v0, Lc;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc;-><init>(Lcrackme/a3/Main;Landroid/os/Looper;)V

    iput-object v0, p0, Lcrackme/a3/Main;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcrackme/a3/Main;)Ljava/util/Random;
    .registers 3

    invoke-static {}, Ldn;->a()Z

    move-result v1

    invoke-static {v1}, Ldn;->b(I)V

    iget-object v0, p0, Lcrackme/a3/Main;->d:Ljava/util/Random;

    return-object v0
.end method

.method public static synthetic b(Lcrackme/a3/Main;)Landroid/os/Handler;
    .registers 3

    invoke-static {}, Ldn;->a()Z

    move-result v1

    invoke-static {v1}, Ldn;->b(I)V

    iget-object v0, p0, Lcrackme/a3/Main;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {}, Ldn;->a()Z

    move-result v3

    invoke-static {v3}, Ldn;->b(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcrackme/a3/Main;->setContentView(I)V

    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcrackme/a3/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcrackme/a3/Main;->b:Landroid/widget/Button;

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcrackme/a3/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcrackme/a3/Main;->a:Landroid/widget/TextView;

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcrackme/a3/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcrackme/a3/Main;->b:Landroid/widget/Button;

    new-instance v2, Ld;

    invoke-direct {v2, p0, v0}, Ld;-><init>(Lcrackme/a3/Main;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-static {}, Ldn;->a()Z

    move-result v1

    invoke-static {v1}, Ldn;->b(I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
