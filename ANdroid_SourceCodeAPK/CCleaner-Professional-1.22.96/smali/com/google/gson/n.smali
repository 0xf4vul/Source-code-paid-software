.class public final Lcom/google/gson/n;
.super Lcom/google/gson/k;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/gson/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/f",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gson/k;-><init>()V

    .line 33
    new-instance v0, Lcom/google/gson/internal/f;

    invoke-direct {v0}, Lcom/google/gson/internal/f;-><init>()V

    iput-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/gson/k;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/k;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/gson/k;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/gson/n;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/gson/n;

    iget-object v0, p1, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    iget-object v1, p0, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/internal/f;

    invoke-virtual {v0}, Lcom/google/gson/internal/f;->hashCode()I

    move-result v0

    return v0
.end method
