.class public final Lcom/piriform/ccleaner/scheduler/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/n;


# instance fields
.field private final a:Lcom/piriform/ccleaner/scheduler/n;

.field private final b:Lf/g;

.field private final c:Lf/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/scheduler/n;Lf/g;Lf/g;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 24
    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/p;->b:Lf/g;

    .line 25
    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/p;->c:Lf/g;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/n;->a()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->b:Lf/g;

    .line 38
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->c:Lf/g;

    .line 39
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/l/c;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/l/c;",
            ")",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/o/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->b:Lf/g;

    .line 52
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->c:Lf/g;

    .line 53
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/n;->a(Ljava/lang/Long;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->b:Lf/g;

    .line 31
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->c:Lf/g;

    .line 32
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/n;->b()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->b:Lf/g;

    .line 45
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/p;->c:Lf/g;

    .line 46
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/piriform/ccleaner/l/c;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/scheduler/n;->b(Lcom/piriform/ccleaner/l/c;)V

    .line 71
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/p;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/n;->c()V

    .line 66
    return-void
.end method
