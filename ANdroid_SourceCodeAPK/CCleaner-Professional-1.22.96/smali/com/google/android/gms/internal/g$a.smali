.class final Lcom/google/android/gms/internal/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/g;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/g;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/g$a;-><init>(Lcom/google/android/gms/internal/g;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/g;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-object v0, v0, Lcom/google/android/gms/internal/g;->e:Lcom/google/android/gms/internal/af;

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->e()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v2}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v3}, Lcom/google/android/gms/internal/g;->b(Lcom/google/android/gms/internal/g;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/af;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-object v0, v0, Lcom/google/android/gms/internal/g;->c:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    .line 2000
    iget v1, v1, Lcom/google/android/gms/common/ConnectionResult;->c:I

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-object v0, v0, Lcom/google/android/gms/internal/g;->c:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->e()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-object v2, v2, Lcom/google/android/gms/internal/g;->e:Lcom/google/android/gms/internal/af;

    iget-object v3, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v3}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    .line 3000
    iget v3, v3, Lcom/google/android/gms/common/ConnectionResult;->c:I

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/af;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 4000
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    .line 0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/g;->e()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/g$a$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/g$a$1;-><init>(Lcom/google/android/gms/internal/g$a;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/internal/z$a;)Lcom/google/android/gms/internal/z;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/g;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/g$a;->a:Lcom/google/android/gms/internal/g;

    invoke-static {v2}, Lcom/google/android/gms/internal/g;->b(Lcom/google/android/gms/internal/g;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_0
.end method
