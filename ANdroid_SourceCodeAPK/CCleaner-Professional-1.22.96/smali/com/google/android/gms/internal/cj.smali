.class public final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/common/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n",
        "<",
        "Lcom/google/android/gms/internal/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;)V
    .locals 6

    const/16 v3, 0x74

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/internal/cm$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/cm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cm;

    return-object v0
.end method
