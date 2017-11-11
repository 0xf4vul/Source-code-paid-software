.class public final Lcom/piriform/ccleaner/professional/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/j;


# static fields
.field static final a:Lcom/piriform/ccleaner/i/m;


# instance fields
.field private final b:Lcom/piriform/ccleaner/n/f;

.field private final c:Lcom/piriform/ccleaner/professional/d;

.field private final d:Lf/g;

.field private final e:Lcom/piriform/ccleaner/b/a;

.field private final f:Lcom/piriform/ccleaner/b/e;

.field private final g:Lcom/piriform/ccleaner/professional/o;

.field private h:Lcom/piriform/ccleaner/professional/k$a;

.field private final i:Lcom/piriform/ccleaner/i/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "ccapro_1"

    invoke-static {v0}, Lcom/piriform/ccleaner/i/m;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/i/m;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/professional/c;->a:Lcom/piriform/ccleaner/i/m;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/n/f;Lcom/piriform/ccleaner/professional/d;Lf/g;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/professional/o;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/piriform/ccleaner/professional/c$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/c$1;-><init>(Lcom/piriform/ccleaner/professional/c;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/c;->i:Lcom/piriform/ccleaner/i/h;

    .line 77
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/c;->b:Lcom/piriform/ccleaner/n/f;

    .line 78
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/c;->c:Lcom/piriform/ccleaner/professional/d;

    .line 79
    iput-object p3, p0, Lcom/piriform/ccleaner/professional/c;->d:Lf/g;

    .line 80
    iput-object p4, p0, Lcom/piriform/ccleaner/professional/c;->e:Lcom/piriform/ccleaner/b/a;

    .line 81
    iput-object p5, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    .line 82
    iput-object p6, p0, Lcom/piriform/ccleaner/professional/c;->g:Lcom/piriform/ccleaner/professional/o;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/b/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->e:Lcom/piriform/ccleaner/b/a;

    return-object v0
.end method

.method private a(Lcom/piriform/ccleaner/b/b;I)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->e:Lcom/piriform/ccleaner/b/a;

    const-string/jumbo v1, "responseCode"

    int-to-long v2, p2

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/c;Lcom/piriform/ccleaner/b/b;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/b/b;I)V

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/c;Lcom/piriform/ccleaner/professional/m;)V
    .locals 2

    .prologue
    .line 2090
    if-eqz p1, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->b:Lcom/piriform/ccleaner/n/f;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/n/f;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 2092
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->e:Lcom/piriform/ccleaner/b/a;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/professional/m;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/c;)Lcom/piriform/ccleaner/professional/k$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->h:Lcom/piriform/ccleaner/professional/k$a;

    return-object v0
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/piriform/ccleaner/professional/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->b:Lcom/piriform/ccleaner/n/f;

    iget-object v2, p0, Lcom/piriform/ccleaner/professional/c;->c:Lcom/piriform/ccleaner/professional/d;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    iget-object v5, p0, Lcom/piriform/ccleaner/professional/c;->g:Lcom/piriform/ccleaner/professional/o;

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/professional/n;-><init>(Lcom/piriform/ccleaner/n/f;Lcom/piriform/ccleaner/professional/d;ZLcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/professional/o;)V

    .line 105
    invoke-static {v0}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    .line 106
    invoke-static {}, Lf/h/a;->b()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->d:Lf/g;

    .line 107
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->c:Lcom/piriform/ccleaner/professional/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/d;->a()Lcom/piriform/ccleaner/professional/f;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/f;->b:Lcom/piriform/ccleaner/i/d;

    .line 154
    invoke-interface {v0, p1, p2, p3}, Lcom/piriform/ccleaner/i/d;->a(IILandroid/content/Intent;)Z

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "handlePurchaseResult called without store having been set up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "Unexpected exception when handling activity result from purchase flow of the PlayIabStore"

    .line 162
    invoke-interface {v1, v2, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/piriform/ccleaner/professional/k$a;)V
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/piriform/ccleaner/b/b;->ay:Lcom/piriform/ccleaner/b/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/professional/c;->a(Lcom/piriform/ccleaner/b/b;I)V

    .line 127
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->e:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->ay:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 129
    iput-object p2, p0, Lcom/piriform/ccleaner/professional/c;->h:Lcom/piriform/ccleaner/professional/k$a;

    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/c;->c:Lcom/piriform/ccleaner/professional/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/d;->a()Lcom/piriform/ccleaner/professional/f;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    iget-object v0, v0, Lcom/piriform/ccleaner/professional/f;->b:Lcom/piriform/ccleaner/i/d;

    .line 1142
    :try_start_0
    sget-object v1, Lcom/piriform/ccleaner/professional/c;->a:Lcom/piriform/ccleaner/i/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/professional/c;->i:Lcom/piriform/ccleaner/i/h;

    invoke-interface {v0, p1, v1, v2}, Lcom/piriform/ccleaner/i/d;->a(Landroid/app/Activity;Lcom/piriform/ccleaner/i/m;Lcom/piriform/ccleaner/i/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v2, "Unexpected exception when launching purchase flow with the PlayIabStore"

    invoke-interface {v1, v2, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p2}, Lcom/piriform/ccleaner/professional/k$a;->c()V

    goto :goto_0
.end method

.method public final b()Lf/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/piriform/ccleaner/professional/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->b:Lcom/piriform/ccleaner/n/f;

    iget-object v2, p0, Lcom/piriform/ccleaner/professional/c;->c:Lcom/piriform/ccleaner/professional/d;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/piriform/ccleaner/professional/c;->f:Lcom/piriform/ccleaner/b/e;

    iget-object v5, p0, Lcom/piriform/ccleaner/professional/c;->g:Lcom/piriform/ccleaner/professional/o;

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/professional/n;-><init>(Lcom/piriform/ccleaner/n/f;Lcom/piriform/ccleaner/professional/d;ZLcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/professional/o;)V

    .line 119
    invoke-static {v0}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    .line 120
    invoke-static {}, Lf/h/a;->b()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/c;->d:Lf/g;

    .line 121
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method
