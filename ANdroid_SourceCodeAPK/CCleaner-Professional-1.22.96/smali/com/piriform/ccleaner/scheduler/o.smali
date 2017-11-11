.class public final Lcom/piriform/ccleaner/scheduler/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/scheduler/n;


# instance fields
.field final a:Lcom/piriform/ccleaner/alarm/c;

.field private final b:Lcom/piriform/ccleaner/o/j;

.field private final c:Lcom/piriform/ccleaner/b/e;

.field private final d:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/o/j;Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/b/e;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/scheduler/o$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/o$1;-><init>(Lcom/piriform/ccleaner/scheduler/o;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->d:Lf/e;

    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    .line 48
    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/o;->a:Lcom/piriform/ccleaner/alarm/c;

    .line 49
    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/o;->c:Lcom/piriform/ccleaner/b/e;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lf/d;
    .locals 1
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
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/o/j;->a()Lf/d;

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
    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/j;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v0

    .line 9087
    new-instance v1, Lcom/piriform/ccleaner/scheduler/o$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/scheduler/o$2;-><init>(Lcom/piriform/ccleaner/scheduler/o;)V

    .line 83
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)Lf/d;
    .locals 1
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
    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/j;->a(Ljava/lang/Long;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lf/d;
    .locals 1
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
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/o/j;->b()Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/piriform/ccleaner/l/c;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/j;->b(Lcom/piriform/ccleaner/l/c;)V

    .line 123
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 99
    .line 9105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9106
    iget-object v2, p0, Lcom/piriform/ccleaner/scheduler/o;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v2}, Lcom/piriform/ccleaner/o/j;->b()Lf/d;

    move-result-object v2

    .line 9112
    new-instance v3, Lcom/piriform/ccleaner/scheduler/o$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/piriform/ccleaner/scheduler/o$3;-><init>(Lcom/piriform/ccleaner/scheduler/o;J)V

    .line 9234
    new-instance v0, Lf/d/a/q;

    invoke-direct {v0, v2, v3}, Lf/d/a/q;-><init>(Lf/d;Lf/c/f;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/piriform/ccleaner/scheduler/o;->d:Lf/e;

    .line 100
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 101
    return-void
.end method
