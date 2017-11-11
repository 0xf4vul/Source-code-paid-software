.class final Lcom/google/gson/internal/bind/TypeAdapters$22$1;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$22;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/v",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/v;

.field final synthetic b:Lcom/google/gson/internal/bind/TypeAdapters$22;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$22;Lcom/google/gson/v;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$22$1;->b:Lcom/google/gson/internal/bind/TypeAdapters$22;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$22$1;->a:Lcom/google/gson/v;

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    .line 1528
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$22$1;->a:Lcom/google/gson/v;

    invoke-virtual {v0, p1}, Lcom/google/gson/v;->a(Lcom/google/gson/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1529
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 526
    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    check-cast p2, Ljava/sql/Timestamp;

    .line 1533
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$22$1;->a:Lcom/google/gson/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/v;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V

    .line 526
    return-void
.end method
