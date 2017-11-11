.class public Lcom/google/android/gms/internal/av;
.super Lcom/google/android/gms/internal/za;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/za",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/gms/internal/aaw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aaw$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$b;Lcom/google/android/gms/internal/aaw$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aaw$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/aaw$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/za;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$a;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/av;->k:Lcom/google/android/gms/internal/aaw$b;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/aaw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/wy;",
            ")",
            "Lcom/google/android/gms/internal/aaw",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/wy;->b:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/wy;->c:Ljava/util/Map;

    .line 1000
    const-string/jumbo v3, "ISO-8859-1"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/afm;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 0
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/afm;->a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/eo$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aaw;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/eo$a;)Lcom/google/android/gms/internal/aaw;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/wy;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->k:Lcom/google/android/gms/internal/aaw$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/aaw$b;->a(Ljava/lang/Object;)V

    .line 0
    return-void
.end method
