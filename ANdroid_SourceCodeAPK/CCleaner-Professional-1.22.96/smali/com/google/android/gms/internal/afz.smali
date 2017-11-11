.class public final Lcom/google/android/gms/internal/afz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 0
    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1000
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    return-object v0

    .line 2000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1000
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method
