.class public final Lcom/google/android/gms/internal/cc$c;
.super Lcom/google/android/gms/internal/cc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cc",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/cf;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 0
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3000
    iget v0, p0, Lcom/google/android/gms/internal/cc;->a:I

    .line 0
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/google/android/gms/internal/cf;->getLongFlagValue(Ljava/lang/String;JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/cf;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cc$c;->b(Lcom/google/android/gms/internal/cf;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
