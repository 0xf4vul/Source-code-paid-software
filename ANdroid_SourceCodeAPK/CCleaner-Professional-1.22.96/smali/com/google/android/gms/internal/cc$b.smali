.class public final Lcom/google/android/gms/internal/cc$b;
.super Lcom/google/android/gms/internal/cc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cc",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;Ljava/lang/Object;B)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/cf;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 0
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3000
    iget v2, p0, Lcom/google/android/gms/internal/cc;->a:I

    .line 0
    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/cf;->getIntFlagValue(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
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
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/cf;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cc$b;->b(Lcom/google/android/gms/internal/cf;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
