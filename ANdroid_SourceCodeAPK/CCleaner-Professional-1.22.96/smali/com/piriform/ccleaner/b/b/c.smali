.class public final Lcom/piriform/ccleaner/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/piriform/ccleaner/b/b/b;

.field private final b:Lf/g;

.field private final c:Lf/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/b/b/b;Lf/g;Lf/g;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/c;->a:Lcom/piriform/ccleaner/b/b/b;

    .line 15
    iput-object p2, p0, Lcom/piriform/ccleaner/b/b/c;->b:Lf/g;

    .line 16
    iput-object p3, p0, Lcom/piriform/ccleaner/b/b/c;->c:Lf/g;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 3
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
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/c;->a:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->g()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/c;->a:Lcom/piriform/ccleaner/b/b/b;

    .line 21
    invoke-virtual {v0, v1}, Lf/d;->b(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    .line 6028
    new-instance v1, Lcom/piriform/ccleaner/b/b/c$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/b/b/c$1;-><init>(Lcom/piriform/ccleaner/b/b/c;)V

    .line 6777
    new-instance v2, Lf/d/a/t;

    invoke-direct {v2, v1}, Lf/d/a/t;-><init>(Lf/c/f;)V

    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/c;->b:Lf/g;

    .line 23
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/b/b/c;->c:Lf/g;

    .line 24
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method
