.class public final Lcom/google/android/gms/internal/afr;
.super Lcom/google/android/gms/common/api/n;

# interfaces
.implements Lcom/google/android/gms/internal/afp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/afr$b;,
        Lcom/google/android/gms/internal/afr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/n",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/android/gms/internal/afp;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/afo;->c:Lcom/google/android/gms/common/api/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/afz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/afz;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/internal/ap;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzzm;)Lcom/google/android/gms/common/api/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzm;",
            ")",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/afr$b;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/common/api/n;->e:Lcom/google/android/gms/common/api/c;

    .line 0
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/afr$b;-><init>(Lcom/google/android/gms/internal/zzzm;Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/afr;->c(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method
