.class public final Lcom/piriform/ccleaner/i/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/i/m;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/i/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/i/k;->a:Lcom/piriform/ccleaner/i/m;

    .line 43
    iput-object p2, p0, Lcom/piriform/ccleaner/i/k;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/piriform/ccleaner/i/k;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/piriform/ccleaner/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/o;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0}, Lcom/google/gson/p;-><init>()V

    invoke-static {p1}, Lcom/google/gson/p;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/k;->g()Lcom/google/gson/n;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/i/m;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/i/m;

    move-result-object v1

    .line 36
    const-string/jumbo v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/piriform/ccleaner/i/k;

    invoke-direct {v2, v1, p0, v0}, Lcom/piriform/ccleaner/i/k;-><init>(Lcom/piriform/ccleaner/i/m;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Purchase{sku="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/i/k;->a:Lcom/piriform/ccleaner/i/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/i/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/i/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
