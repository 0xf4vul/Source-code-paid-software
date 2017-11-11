.class public final Lcom/google/android/gms/internal/cc$d;
.super Lcom/google/android/gms/internal/cc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cc",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/cf;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/String;

    .line 3000
    iget v2, p0, Lcom/google/android/gms/internal/cc;->a:I

    .line 0
    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/cf;->getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
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
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/cf;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cc$d;->b(Lcom/google/android/gms/internal/cf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
