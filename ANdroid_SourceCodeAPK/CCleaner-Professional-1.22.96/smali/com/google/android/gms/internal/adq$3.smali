.class final Lcom/google/android/gms/internal/adq$3;
.super Lcom/google/android/gms/internal/av;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:[B

.field final synthetic l:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$b;Lcom/google/android/gms/internal/aaw$a;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/adq$3;->k:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/adq$3;->l:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/av;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$b;Lcom/google/android/gms/internal/aaw$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adq$3;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/av;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adq$3;->l:Ljava/util/Map;

    goto :goto_0
.end method

.method public final c()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adq$3;->k:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/av;->c()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adq$3;->k:[B

    goto :goto_0
.end method
