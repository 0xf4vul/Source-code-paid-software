.class final Lcom/piriform/ccleaner/professional/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/piriform/ccleaner/professional/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/n/f;

.field private final b:Lcom/piriform/ccleaner/professional/d;

.field private final c:Z

.field private final d:Lcom/piriform/ccleaner/b/e;

.field private final e:Lcom/piriform/ccleaner/professional/o;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/f;Lcom/piriform/ccleaner/professional/d;ZLcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/professional/o;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/n;->a:Lcom/piriform/ccleaner/n/f;

    .line 29
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/n;->b:Lcom/piriform/ccleaner/professional/d;

    .line 30
    iput-boolean p3, p0, Lcom/piriform/ccleaner/professional/n;->c:Z

    .line 31
    iput-object p4, p0, Lcom/piriform/ccleaner/professional/n;->d:Lcom/piriform/ccleaner/b/e;

    .line 32
    iput-object p5, p0, Lcom/piriform/ccleaner/professional/n;->e:Lcom/piriform/ccleaner/professional/o;

    .line 33
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/i/d;)Lcom/piriform/ccleaner/professional/m;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/piriform/ccleaner/professional/n;->b(Lcom/piriform/ccleaner/i/d;)Lcom/piriform/ccleaner/professional/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/n;->d:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "Unexpected exception when querying inventory with PlayIabStore: "

    invoke-interface {v1, v2, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    goto :goto_0
.end method

.method private static b(Lcom/piriform/ccleaner/i/d;)Lcom/piriform/ccleaner/professional/m;
    .locals 2

    .prologue
    .line 93
    :try_start_0
    invoke-interface {p0}, Lcom/piriform/ccleaner/i/d;->a()Lcom/piriform/ccleaner/i/g;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/piriform/ccleaner/professional/c;->a:Lcom/piriform/ccleaner/i/m;

    .line 1049
    iget-object v0, v0, Lcom/piriform/ccleaner/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 95
    if-eqz v0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;
    :try_end_0
    .catch Lcom/piriform/ccleaner/i/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    sget-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15
    .line 2037
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/n;->a:Lcom/piriform/ccleaner/n/f;

    invoke-interface {v0}, Lcom/piriform/ccleaner/n/f;->b()Lcom/piriform/ccleaner/professional/m;

    move-result-object v1

    .line 2107
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/piriform/ccleaner/professional/n;->c:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 2038
    :goto_0
    if-eqz v0, :cond_8

    .line 3055
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/n;->b:Lcom/piriform/ccleaner/professional/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/d;->a()Lcom/piriform/ccleaner/professional/f;

    move-result-object v0

    .line 3056
    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/f;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4045
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/f;->b:Lcom/piriform/ccleaner/i/d;

    .line 3057
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/professional/n;->a(Lcom/piriform/ccleaner/i/d;)Lcom/piriform/ccleaner/professional/m;

    move-result-object v0

    .line 3062
    :goto_1
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/professional/m;->a(Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/professional/m;

    move-result-object v0

    .line 2041
    iget-object v4, p0, Lcom/piriform/ccleaner/professional/n;->a:Lcom/piriform/ccleaner/n/f;

    invoke-interface {v4, v0}, Lcom/piriform/ccleaner/n/f;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 5103
    sget-object v4, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    if-ne v1, v4, :cond_7

    sget-object v1, Lcom/piriform/ccleaner/professional/m;->b:Lcom/piriform/ccleaner/professional/m;

    if-ne v0, v1, :cond_7

    move v1, v2

    .line 2043
    :goto_2
    if-eqz v1, :cond_1

    .line 2044
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/n;->e:Lcom/piriform/ccleaner/professional/o;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/o;->a()V

    .line 15
    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move v0, v3

    .line 2107
    goto :goto_0

    .line 5053
    :cond_3
    iget-object v4, v0, Lcom/piriform/ccleaner/professional/f;->a:Lcom/piriform/ccleaner/i/c;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/piriform/ccleaner/professional/f;->a:Lcom/piriform/ccleaner/i/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/i/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    .line 4069
    :goto_4
    if-eqz v0, :cond_6

    .line 4070
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->c:Lcom/piriform/ccleaner/professional/m;

    goto :goto_1

    :cond_5
    move v0, v3

    .line 5053
    goto :goto_4

    .line 4072
    :cond_6
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    goto :goto_1

    :cond_7
    move v1, v3

    .line 5103
    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method
