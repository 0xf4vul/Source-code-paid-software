.class public final Lcom/piriform/ccleaner/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/m/k;


# instance fields
.field final a:Lcom/piriform/ccleaner/m/m;

.field final b:Lcom/piriform/ccleaner/b/e;

.field private final c:Lcom/piriform/ccleaner/m/g;

.field private final d:Lcom/piriform/ccleaner/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/p/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/b/e;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/piriform/ccleaner/m/a;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/m/a;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/piriform/ccleaner/m/b;-><init>(Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/m/g;Lcom/piriform/ccleaner/b/e;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/m/g;Lcom/piriform/ccleaner/b/e;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/p/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/p/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/m/b;->d:Lcom/piriform/ccleaner/p/a;

    .line 37
    iput-object p1, p0, Lcom/piriform/ccleaner/m/b;->a:Lcom/piriform/ccleaner/m/m;

    .line 38
    iput-object p2, p0, Lcom/piriform/ccleaner/m/b;->c:Lcom/piriform/ccleaner/m/g;

    .line 39
    iput-object p3, p0, Lcom/piriform/ccleaner/m/b;->b:Lcom/piriform/ccleaner/b/e;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b;->c:Lcom/piriform/ccleaner/m/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/g;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lf/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/piriform/ccleaner/m/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/m/c;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/piriform/ccleaner/m/b;->c:Lcom/piriform/ccleaner/m/g;

    invoke-interface {v1}, Lcom/piriform/ccleaner/m/g;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lf/d;->a(Ljava/lang/Iterable;)Lf/d;

    move-result-object v1

    .line 6096
    new-instance v2, Lcom/piriform/ccleaner/m/b$4;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/m/b$4;-><init>(Lcom/piriform/ccleaner/m/b;)V

    .line 51
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 7086
    new-instance v2, Lcom/piriform/ccleaner/m/b$3;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/m/b$3;-><init>(Lcom/piriform/ccleaner/m/b;)V

    .line 52
    invoke-virtual {v1, v2}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 8038
    new-instance v2, Lcom/piriform/ccleaner/p/c$1;

    invoke-direct {v2}, Lcom/piriform/ccleaner/p/c$1;-><init>()V

    .line 53
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 8070
    new-instance v2, Lcom/piriform/ccleaner/m/b$2;

    invoke-direct {v2, p0, v0}, Lcom/piriform/ccleaner/m/b$2;-><init>(Lcom/piriform/ccleaner/m/b;Lcom/piriform/ccleaner/m/c;)V

    .line 54
    invoke-virtual {v1, v2}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/m/b$1;

    invoke-direct {v2, p0, v0}, Lcom/piriform/ccleaner/m/b$1;-><init>(Lcom/piriform/ccleaner/m/b;Lcom/piriform/ccleaner/m/c;)V

    .line 8982
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    .line 8983
    invoke-static {v2}, Lf/c/c;->a(Lf/c/a;)Lf/c/b;

    move-result-object v3

    .line 8985
    new-instance v4, Lf/d/e/a;

    invoke-direct {v4, v0, v3, v2}, Lf/d/e/a;-><init>(Lf/c/b;Lf/c/b;Lf/c/a;)V

    .line 8987
    new-instance v0, Lf/d/a/i;

    invoke-direct {v0, v1, v4}, Lf/d/a/i;-><init>(Lf/d;Lf/e;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/piriform/ccleaner/m/b;->d:Lcom/piriform/ccleaner/p/a;

    .line 61
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$c;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b;->d:Lcom/piriform/ccleaner/p/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/p/a;->a()V

    .line 67
    return-void
.end method
