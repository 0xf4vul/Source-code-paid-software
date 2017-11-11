.class final Lcom/google/android/gms/internal/pm$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/oi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/np;",
            "Lcom/google/android/gms/internal/pn",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/oi",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p2, Lcom/google/android/gms/internal/pn;->a:Ljava/lang/Class;

    .line 0
    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/oi;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/pm$7$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/pm$7$1;-><init>(Lcom/google/android/gms/internal/pm$7;Lcom/google/android/gms/internal/oi;)V

    goto :goto_0
.end method
