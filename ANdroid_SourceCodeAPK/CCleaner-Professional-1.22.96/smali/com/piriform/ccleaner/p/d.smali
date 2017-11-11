.class public final Lcom/piriform/ccleaner/p/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/e",
            "<TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lf/i/a;->d()Lf/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/p/d;->a:Lf/i/a;

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/p/d;->b:Lf/c/e;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    check-cast p1, Lf/d;

    .line 1022
    iget-object v0, p0, Lcom/piriform/ccleaner/p/d;->a:Lf/i/a;

    .line 1047
    new-instance v1, Lcom/piriform/ccleaner/p/c$2;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/p/c$2;-><init>(Lf/e;)V

    .line 1023
    invoke-virtual {p1, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/p/d$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/p/d$1;-><init>(Lcom/piriform/ccleaner/p/d;)V

    .line 1024
    invoke-static {v1}, Lf/d;->a(Lf/c/d;)Lf/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d;)Lf/d;

    move-result-object v0

    .line 8
    return-object v0
.end method
