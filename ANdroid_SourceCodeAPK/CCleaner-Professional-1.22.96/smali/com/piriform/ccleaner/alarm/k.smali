.class public final Lcom/piriform/ccleaner/alarm/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/alarm/j;


# instance fields
.field final a:Lcom/piriform/ccleaner/alarm/c;

.field private final b:Lcom/piriform/ccleaner/o/b;

.field private final c:Lcom/piriform/ccleaner/o/c;

.field private final d:Lf/g;

.field private final e:Lcom/piriform/ccleaner/p/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/p/b",
            "<",
            "Lcom/piriform/ccleaner/alarm/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/o/b;Lcom/piriform/ccleaner/o/c;Lf/g;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/alarm/k$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/alarm/k$1;-><init>(Lcom/piriform/ccleaner/alarm/k;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->e:Lcom/piriform/ccleaner/p/b;

    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    .line 45
    iput-object p2, p0, Lcom/piriform/ccleaner/alarm/k;->b:Lcom/piriform/ccleaner/o/b;

    .line 46
    iput-object p3, p0, Lcom/piriform/ccleaner/alarm/k;->c:Lcom/piriform/ccleaner/o/c;

    .line 47
    iput-object p4, p0, Lcom/piriform/ccleaner/alarm/k;->d:Lf/g;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->c:Lcom/piriform/ccleaner/o/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/o/c;->a()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/k;->d:Lf/g;

    .line 53
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/k;->e:Lcom/piriform/ccleaner/p/b;

    .line 54
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 55
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/a;)V

    .line 60
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->b:Lcom/piriform/ccleaner/o/b;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/b;->a(Lcom/piriform/ccleaner/alarm/a;)V

    .line 61
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/alarm/d;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/d;)V

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->b:Lcom/piriform/ccleaner/o/b;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/o/b;->a(Lcom/piriform/ccleaner/alarm/d;)V

    .line 67
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->b(Lcom/piriform/ccleaner/alarm/a;)V

    .line 72
    return-void
.end method

.method public final c(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/k;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/alarm/c;->c(Lcom/piriform/ccleaner/alarm/a;)V

    .line 77
    return-void
.end method
