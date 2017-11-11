.class final Lcom/google/android/gms/internal/ag$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ae;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/ae;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ae;

    iput-object p3, p0, Lcom/google/android/gms/internal/ag$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ag;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ae;

    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->b(Lcom/google/android/gms/internal/ag;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->b(Lcom/google/android/gms/internal/ag;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ag$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ae;->a(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ag;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ag;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->b()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->c:Lcom/google/android/gms/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ag;)I

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
