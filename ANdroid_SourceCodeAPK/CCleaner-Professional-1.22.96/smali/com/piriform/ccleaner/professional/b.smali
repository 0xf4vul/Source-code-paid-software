.class public final Lcom/piriform/ccleaner/professional/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/o;


# instance fields
.field final a:Lcom/piriform/ccleaner/scheduler/n;

.field private final b:Lf/e;
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
.method public constructor <init>(Lcom/piriform/ccleaner/scheduler/n;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/professional/b$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/b$1;-><init>(Lcom/piriform/ccleaner/professional/b;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/professional/b;->b:Lf/e;

    .line 36
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/b;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    .line 1045
    iget-object v0, p0, Lcom/piriform/ccleaner/professional/b;->a:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/n;->b()Lf/d;

    move-result-object v0

    .line 1046
    invoke-static {}, Lf/h/a;->b()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    .line 1047
    invoke-static {}, Lf/a/b/a;->a()Lf/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/professional/b;->b:Lf/e;

    .line 1048
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 42
    return-void
.end method
