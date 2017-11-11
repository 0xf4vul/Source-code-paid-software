.class public final Lcom/piriform/ccleaner/appmanager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/appmanager/j;


# instance fields
.field final a:Lcom/piriform/ccleaner/appmanager/c;

.field final b:Lcom/piriform/ccleaner/f/m;

.field private final c:Lcom/piriform/ccleaner/m/k;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/m/k;Lcom/piriform/ccleaner/appmanager/c;Lcom/piriform/ccleaner/f/m;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/a;->c:Lcom/piriform/ccleaner/m/k;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/a;->a:Lcom/piriform/ccleaner/appmanager/c;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/appmanager/a;->b:Lcom/piriform/ccleaner/f/m;

    .line 23
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
            "Lcom/piriform/ccleaner/core/data/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/a;->c:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->b()Lf/d;

    move-result-object v0

    .line 6041
    new-instance v1, Lcom/piriform/ccleaner/appmanager/a$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/a$1;-><init>(Lcom/piriform/ccleaner/appmanager/a;)V

    .line 6956
    new-instance v2, Lf/d/a/u;

    invoke-direct {v2, v1}, Lf/d/a/u;-><init>(Lf/c/a;)V

    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 7059
    new-instance v1, Lcom/piriform/ccleaner/appmanager/a$3;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/a$3;-><init>(Lcom/piriform/ccleaner/appmanager/a;)V

    .line 29
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 8050
    new-instance v1, Lcom/piriform/ccleaner/appmanager/a$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/a$2;-><init>(Lcom/piriform/ccleaner/appmanager/a;)V

    .line 30
    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 31
    invoke-static {}, Lf/h/a;->b()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    .line 32
    invoke-static {}, Lf/a/b/a;->a()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/a;->c:Lcom/piriform/ccleaner/m/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/k;->c()V

    .line 38
    return-void
.end method
