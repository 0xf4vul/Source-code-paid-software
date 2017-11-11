.class final Lcom/piriform/ccleaner/o/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        "Lf/d",
        "<",
        "Lcom/piriform/ccleaner/o/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/f;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/piriform/ccleaner/o/f$2;->a:Lcom/piriform/ccleaner/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 66
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 8069
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f$2;->a:Lcom/piriform/ccleaner/o/f;

    .line 9079
    iget-object v1, v0, Lcom/piriform/ccleaner/o/f;->b:Lcom/piriform/ccleaner/o/j;

    invoke-interface {v1}, Lcom/piriform/ccleaner/o/j;->b()Lf/d;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/o/f$3;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/o/f$3;-><init>(Lcom/piriform/ccleaner/o/f;)V

    invoke-virtual {v1, v2}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    .line 10029
    sget-object v1, Lf/d/a/w$a;->a:Lf/d/a/w;

    .line 9330
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 8070
    const-class v1, Lcom/piriform/ccleaner/o/g;

    .line 10046
    new-instance v2, Lf/d/a/s;

    invoke-direct {v2, v1}, Lf/d/a/s;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 8070
    iget-object v1, p0, Lcom/piriform/ccleaner/o/f$2;->a:Lcom/piriform/ccleaner/o/f;

    .line 11016
    iget-object v1, v1, Lcom/piriform/ccleaner/o/f;->b:Lcom/piriform/ccleaner/o/j;

    .line 8071
    invoke-interface {v1, p1}, Lcom/piriform/ccleaner/o/j;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v1

    .line 8069
    invoke-static {v0, v1}, Lf/d;->a(Lf/d;Lf/d;)Lf/d;

    move-result-object v0

    .line 66
    return-object v0
.end method
