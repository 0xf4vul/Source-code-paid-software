.class final Lcom/google/android/gms/internal/xh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/xh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ej;

.field final synthetic b:Lcom/google/android/gms/internal/xh$d;

.field final synthetic c:Lcom/google/android/gms/internal/xh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/xh$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh$1;->a:Lcom/google/android/gms/internal/ej;

    iput-object p3, p0, Lcom/google/android/gms/internal/xh$1;->b:Lcom/google/android/gms/internal/xh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->b:Landroid/content/Context;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/xh;->d:Lcom/google/android/gms/internal/zzqh;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1;->a:Lcom/google/android/gms/internal/ej;

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/xg;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/xg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/ads/internal/e;)V

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/xh$1$1;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/xh$1$1;-><init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/xe;->a(Lcom/google/android/gms/internal/xe$a;)V

    const-string/jumbo v0, "/jsLoaded"

    new-instance v1, Lcom/google/android/gms/internal/xh$1$2;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/xh$1$2;-><init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;)V

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    new-instance v0, Lcom/google/android/gms/internal/adw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/xh$1$3;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/gms/internal/xh$1$3;-><init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/adw;)V

    .line 4000
    iput-object v1, v0, Lcom/google/android/gms/internal/adw;->a:Ljava/lang/Object;

    .line 0
    const-string/jumbo v0, "/requestReload"

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    .line 0
    const-string/jumbo v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/xh$1$4;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/xh$1$4;-><init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;)V

    sget v2, Lcom/google/android/gms/internal/xh$a;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    .line 0
    const-string/jumbo v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/xe;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->c:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
