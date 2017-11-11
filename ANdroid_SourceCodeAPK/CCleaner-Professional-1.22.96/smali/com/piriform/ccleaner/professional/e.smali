.class public final Lcom/piriform/ccleaner/professional/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/d;


# instance fields
.field final a:Lcom/piriform/ccleaner/i/d;

.field private final b:Lcom/piriform/ccleaner/b/e;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/e;->a:Lcom/piriform/ccleaner/i/d;

    .line 25
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/e;->b:Lcom/piriform/ccleaner/b/e;

    .line 26
    return-void
.end method

.method private b()Lcom/piriform/ccleaner/c/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/piriform/ccleaner/c/b",
            "<",
            "Lcom/piriform/ccleaner/professional/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    new-instance v1, Lcom/piriform/ccleaner/c/b;

    invoke-direct {v1}, Lcom/piriform/ccleaner/c/b;-><init>()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/e;->a:Lcom/piriform/ccleaner/i/d;

    .line 2060
    new-instance v2, Lcom/piriform/ccleaner/professional/e$1;

    invoke-direct {v2, p0, v1}, Lcom/piriform/ccleaner/professional/e$1;-><init>(Lcom/piriform/ccleaner/professional/e;Lcom/piriform/ccleaner/c/b;)V

    .line 50
    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/i/d;->a(Lcom/piriform/ccleaner/i/i;)Lcom/piriform/ccleaner/i/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v2, p0, Lcom/piriform/ccleaner/professional/e;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, "Unexpected exception when setting up the PlayIabStore"

    invoke-interface {v2, v3, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3023
    new-instance v2, Lcom/piriform/ccleaner/professional/f;

    invoke-direct {v2, v4, v4, v0}, Lcom/piriform/ccleaner/professional/f;-><init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/c/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/professional/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1036
    invoke-direct {p0}, Lcom/piriform/ccleaner/professional/e;->b()Lcom/piriform/ccleaner/c/b;

    move-result-object v1

    .line 1037
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/piriform/ccleaner/c/b;->a(ILjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/f;

    .line 1038
    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Lcom/piriform/ccleaner/professional/f;

    invoke-direct {v0, v3, v3, v3}, Lcom/piriform/ccleaner/professional/f;-><init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    .line 1038
    :cond_0
    return-object v0
.end method
