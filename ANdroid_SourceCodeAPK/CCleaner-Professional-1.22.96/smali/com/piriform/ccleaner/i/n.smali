.class public final Lcom/piriform/ccleaner/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lcom/piriform/ccleaner/i/m;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/i/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/i/n;->a:Lcom/piriform/ccleaner/i/m;

    .line 43
    iput-object p2, p0, Lcom/piriform/ccleaner/i/n;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/piriform/ccleaner/i/n;->c:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/piriform/ccleaner/i/n;->d:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lcom/piriform/ccleaner/i/n;->e:J

    .line 47
    iput-object p7, p0, Lcom/piriform/ccleaner/i/n;->f:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lcom/piriform/ccleaner/i/n;->g:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lcom/piriform/ccleaner/i/n;->h:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/piriform/ccleaner/i/n;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/o;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0}, Lcom/google/gson/p;-><init>()V

    invoke-static {p1}, Lcom/google/gson/p;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/k;->g()Lcom/google/gson/n;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/i/m;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/i/m;

    move-result-object v2

    .line 27
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v4

    .line 29
    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v5

    .line 30
    const-string/jumbo v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->d()J

    move-result-wide v6

    .line 31
    const-string/jumbo v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v8

    .line 33
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v9

    .line 34
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/k;->b()Ljava/lang/String;

    move-result-object v10

    .line 36
    new-instance v1, Lcom/piriform/ccleaner/i/n;

    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/piriform/ccleaner/i/n;-><init>(Lcom/piriform/ccleaner/i/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
