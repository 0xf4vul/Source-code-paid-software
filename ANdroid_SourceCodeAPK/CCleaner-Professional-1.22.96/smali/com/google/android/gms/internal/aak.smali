.class public abstract Lcom/google/android/gms/internal/aak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aaj$a;
.implements Lcom/google/android/gms/internal/adl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aak$b;,
        Lcom/google/android/gms/internal/aak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aaj$a;",
        "Lcom/google/android/gms/internal/adl",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/aek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aek",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/aaj$a;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aek;Lcom/google/android/gms/internal/aaj$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aek",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/aaj$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aak;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/aak;->a:Lcom/google/android/gms/internal/aek;

    iput-object p2, p0, Lcom/google/android/gms/internal/aak;->b:Lcom/google/android/gms/internal/aaj$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzmn;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aak;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aak;->b:Lcom/google/android/gms/internal/aaj$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aaj$a;->a(Lcom/google/android/gms/internal/zzmn;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aak;->d()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/aar;Lcom/google/android/gms/internal/zzmk;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/aan;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/aan;-><init>(Lcom/google/android/gms/internal/aaj$a;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/aar;->a(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/aas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    const-string/jumbo v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aak;->b:Lcom/google/android/gms/internal/aaj$a;

    new-instance v2, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/aaj$a;->a(Lcom/google/android/gms/internal/zzmn;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aak;->d()V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    .line 1000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aak;->e()Lcom/google/android/gms/internal/aar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aak;->b:Lcom/google/android/gms/internal/aaj$a;

    new-instance v1, Lcom/google/android/gms/internal/zzmn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aaj$a;->a(Lcom/google/android/gms/internal/zzmn;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aak;->d()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aak;->a:Lcom/google/android/gms/internal/aek;

    new-instance v2, Lcom/google/android/gms/internal/aak$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/aak$1;-><init>(Lcom/google/android/gms/internal/aak;Lcom/google/android/gms/internal/aar;)V

    new-instance v0, Lcom/google/android/gms/internal/aak$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aak$2;-><init>(Lcom/google/android/gms/internal/aak;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aek;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    goto :goto_0
.end method

.method public abstract d()V
.end method

.method public abstract e()Lcom/google/android/gms/internal/aar;
.end method
