.class final Lcom/google/android/gms/internal/aet$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/aer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/zzeg;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/internal/ej;

.field final synthetic f:Lcom/google/android/gms/internal/zzqh;

.field final synthetic g:Lcom/google/android/gms/internal/aet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aet;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/aet$1;->g:Lcom/google/android/gms/internal/aet;

    iput-object p2, p0, Lcom/google/android/gms/internal/aet$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/aet$1;->b:Lcom/google/android/gms/internal/zzeg;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aet$1;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aet$1;->d:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/aet$1;->e:Lcom/google/android/gms/internal/ej;

    iput-object p5, p0, Lcom/google/android/gms/internal/aet$1;->f:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aet$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/aet$1;->b:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aet$1;->c:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/aet$1;->d:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/aet$1;->e:Lcom/google/android/gms/internal/ej;

    iget-object v5, p0, Lcom/google/android/gms/internal/aet$1;->f:Lcom/google/android/gms/internal/zzqh;

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/aet;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/aer;

    move-result-object v0

    .line 0
    return-object v0
.end method
