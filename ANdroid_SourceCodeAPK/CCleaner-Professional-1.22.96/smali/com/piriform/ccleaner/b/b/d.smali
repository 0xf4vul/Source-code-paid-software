.class public final Lcom/piriform/ccleaner/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/b/b;


# static fields
.field private static final b:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/piriform/ccleaner/professional/g;

.field private final d:Lcom/piriform/ccleaner/b/b/b;

.field private final e:Lcom/piriform/ccleaner/professional/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/piriform/ccleaner/b/b/d;->a:Lcom/piriform/ccleaner/b/b/b;

    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/b/b/d;->b:Lf/d;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/b/b/b;Lcom/piriform/ccleaner/professional/g;Lcom/piriform/ccleaner/professional/m;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/b/b/d;->c:Lcom/piriform/ccleaner/professional/g;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/b/b/d;->e:Lcom/piriform/ccleaner/professional/m;

    .line 23
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->e:Lcom/piriform/ccleaner/professional/m;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/piriform/ccleaner/b/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/piriform/ccleaner/b/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/piriform/ccleaner/b/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/piriform/ccleaner/b/b/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/d;->d:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->g()Lf/d;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/b/b/d;->b:Lf/d;

    .line 62
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/d;)Lf/d;

    move-result-object v0

    .line 8072
    new-instance v1, Lcom/piriform/ccleaner/b/b/d$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/b/b/d$1;-><init>(Lcom/piriform/ccleaner/b/b/d;)V

    .line 10050
    new-instance v2, Lf/d/a/z;

    new-instance v3, Lf/d/a/z$1;

    invoke-direct {v3, v1}, Lf/d/a/z$1;-><init>(Lf/c/e;)V

    invoke-direct {v2, v3}, Lf/d/a/z;-><init>(Lf/c/e;)V

    .line 9054
    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/d;->c:Lcom/piriform/ccleaner/professional/g;

    invoke-interface {v1}, Lcom/piriform/ccleaner/professional/g;->a()Lf/d;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/piriform/ccleaner/b/b/d;->c:Lcom/piriform/ccleaner/professional/g;

    .line 10082
    new-instance v3, Lcom/piriform/ccleaner/b/b/d$2;

    invoke-direct {v3, p0, v2}, Lcom/piriform/ccleaner/b/b/d$2;-><init>(Lcom/piriform/ccleaner/b/b/d;Lcom/piriform/ccleaner/professional/g;)V

    .line 67
    invoke-static {v0, v1, v3}, Lf/d;->a(Lf/d;Lf/d;Lf/c/f;)Lf/d;

    move-result-object v0

    return-object v0
.end method
