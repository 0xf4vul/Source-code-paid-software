.class public final Lcom/piriform/ccleaner/o/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/o/e;


# instance fields
.field final a:Lcom/piriform/ccleaner/o/i;

.field final b:Lcom/piriform/ccleaner/o/j;

.field final c:Lcom/piriform/ccleaner/b/a;

.field final d:Lcom/piriform/ccleaner/b/e;

.field private final e:Lf/g;

.field private final f:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/o/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/o/i;Lcom/piriform/ccleaner/o/j;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/e;Lf/g;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/o/f$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/o/f$1;-><init>(Lcom/piriform/ccleaner/o/f;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/o/f;->f:Lf/e;

    .line 48
    iput-object p1, p0, Lcom/piriform/ccleaner/o/f;->a:Lcom/piriform/ccleaner/o/i;

    .line 49
    iput-object p2, p0, Lcom/piriform/ccleaner/o/f;->b:Lcom/piriform/ccleaner/o/j;

    .line 50
    iput-object p3, p0, Lcom/piriform/ccleaner/o/f;->c:Lcom/piriform/ccleaner/b/a;

    .line 51
    iput-object p4, p0, Lcom/piriform/ccleaner/o/f;->d:Lcom/piriform/ccleaner/b/e;

    .line 52
    iput-object p5, p0, Lcom/piriform/ccleaner/o/f;->e:Lf/g;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f;->a:Lcom/piriform/ccleaner/o/i;

    .line 1042
    new-instance v1, Lcom/piriform/ccleaner/o/i$1;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/o/i$1;-><init>(Lcom/piriform/ccleaner/o/i;)V

    invoke-static {v1}, Lf/d;->a(Ljava/util/concurrent/Callable;)Lf/d;

    move-result-object v0

    .line 2038
    new-instance v1, Lcom/piriform/ccleaner/p/c$1;

    invoke-direct {v1}, Lcom/piriform/ccleaner/p/c$1;-><init>()V

    .line 1058
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 2066
    new-instance v1, Lcom/piriform/ccleaner/o/f$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/o/f$2;-><init>(Lcom/piriform/ccleaner/o/f;)V

    .line 58
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 2088
    new-instance v1, Lcom/piriform/ccleaner/o/f$4;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/o/f$4;-><init>(Lcom/piriform/ccleaner/o/f;)V

    .line 59
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/o/f;->e:Lf/g;

    .line 60
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/o/f;->e:Lf/g;

    .line 61
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/o/f;->f:Lf/e;

    .line 62
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 63
    return-void
.end method
