.class final Lcom/google/android/gms/internal/lg$2;
.super Lcom/google/android/gms/internal/hq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lg;->a(Lcom/google/android/gms/internal/lg$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hq$b",
        "<",
        "Lcom/google/android/gms/internal/lf;",
        "Lcom/google/android/gms/internal/ls;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/gms/internal/lg$a;

.field final synthetic c:Lcom/google/android/gms/internal/lg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lg;Lcom/google/android/gms/internal/lg$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/lg$2;->c:Lcom/google/android/gms/internal/lg;

    iput-object p2, p0, Lcom/google/android/gms/internal/lg$2;->b:Lcom/google/android/gms/internal/lg$a;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hq$b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lg$2;->a:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/lf;

    check-cast p2, Lcom/google/android/gms/internal/ls;

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lg$2;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/lf;->c()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/internal/lf;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lg$2;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lg$2;->b:Lcom/google/android/gms/internal/lg$a;

    invoke-static {}, Lcom/google/android/gms/internal/lf;->c()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/lg$2;->c:Lcom/google/android/gms/internal/lg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lg;->f()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lg$a;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lg$2;->b:Lcom/google/android/gms/internal/lg$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/lg$a;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    .line 0
    return-void
.end method
